import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:keep_books/domain/auth/repository/auth_failure.dart';
import 'package:keep_books/domain/auth/entities/user.dart';
import 'package:keep_books/domain/auth/repository/i_auth_facade.dart';
import 'package:keep_books/domain/auth/validate/value_objects.dart';
import '../profile/user_profile_dto.dart';
import './firebase_user_mapper.dart'; //import file of extension manual somtime not work

/// {@template authentication_repository}
/// Repository which manages user authentication.
/// {@endtemplate}
@Singleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  // final GoogleSignIn _googleSignIn;

  AuthFacade(this._firebaseAuth, this._firestore);

  Option<User> curUser = optionOf(User.empty());
  @override
  Option<User> get currentUser => curUser;

  ///check for sign-in user Return optionOf to handle null value by replacing it with none().
  /// also Create firestore user then change to User and firebase keep it locally by default
  @override
  Stream<Option<User>> getSignedInUser() {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      Option<User> user = optionOf(firebaseUser?.toDomainUser());
      curUser = user;
      return currentUser;
    });
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {Name? name,
      EmailAddress? emailAddress,
      RegisterPassword? password}) async {
    //final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final emailAddressStr = emailAddress?.getOrCrash();
    //final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    final passwordStr = password?.getOrCrash();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr!,
        password: passwordStr!,
      );
      //create defult profile here
      var userProfileDto = UserProfileDto(
          uid: _firebaseAuth.currentUser!.uid,
          name: name!.getOrCrash(),
          avatarUrl: "https://i.pravatar.cc/300",
          quote: "quote",
          profession: "profession");
      await _firestore
          .collection('users')
          .doc(_firebaseAuth.currentUser!.uid)
          .set(userProfileDto.toJson());

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      //FirebaseException PERMISSION_DENIED
      return left(const AuthFailure.storageWriteFailed());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {EmailAddress? emailAddress, LoginPassword? password}) async {
    //here we validate the object value
    //final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final emailAddressStr = emailAddress?.getOrCrash();
    //final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    final passwordStr = password?.getOrCrash();
    //apply code for signIn firebase or server api
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        //error here
        email: emailAddressStr!,
        password: passwordStr!,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() {
    //still need to handle signout errors.

    return Future.wait([
      _firebaseAuth.signOut(),
      // _googleSignIn.signOut(),
    ]);
  }
}

  // @override
  // Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
  //   try {
  //     final googleUser = await _googleSignIn.signIn();

  //     if (googleUser == null) {
  //       return left(const AuthFailure.cancelledByUser());
  //     }

  //     final googleAuthentication = await googleUser.authentication;
  //     final authCredential = GoogleAuthProvider.credential(
  //       accessToken: googleAuthentication.accessToken,
  //       idToken: googleAuthentication.idToken,
  //     );
  //     await _firebaseAuth.signInWithCredential(authCredential);
  //     return right(unit);
  //   } on PlatformException catch (_) {
  //     return left(const AuthFailure.serverError());
  //   }
  // }