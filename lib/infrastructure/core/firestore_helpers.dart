import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:keep_books/domain/auth/repository/i_auth_facade.dart';
import 'package:keep_books/domain/core/errors.dart';
import 'package:keep_books/injection.dart';

import '../../domain/auth/entities/user.dart';

extension FirestoreX on FirebaseFirestore {
  ///Retrive DocumentReference  by using [currentUser] that use FirebaseAuth user.uid
  DocumentReference<Map<String, dynamic>> userDocument() {
    var userOption = getIt<IAuthFacade>().currentUser;
    User user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash()); //we use user.uid casue it's equal to doc.id
  }

///Retrive User by using [currentUser] that use FirebaseAuth user.uid
  User userBuilder() {
    var userOption = getIt<IAuthFacade>().currentUser;
    return userOption.getOrElse(() => throw NotAuthenticatedError());
  }
}

extension DocumentReferenceX on DocumentReference {
  ///Retrive CollectionReference to books path
  CollectionReference get bookCollection => collection('books');

  ///Retrive CollectionReference to users path
  CollectionReference get userProfileCollection => collection('users');
}
