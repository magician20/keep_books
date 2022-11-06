import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:keep_books/infrastructure/core/firestore_helpers.dart';
import 'package:keep_books/infrastructure/profile/user_profile_dto.dart';

import '../../domain/auth/entities/profile.dart';
import '../../domain/auth/entities/user.dart';
import '../../domain/profile/i_profile_repository.dart';
import '../../domain/profile/profile_failure.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final FirebaseFirestore _firestore;

  ProfileRepository(this._firestore);

  @override
  Future<Either<ProfileFailure, Unit>> createProfileData(
      Profile userProfile) async {
    try {
     // print("createProfileData");
      var user =  _firestore.userBuilder();
      final userDto =
          UserProfileDto.fromDomain(user.copyWith(profile: userProfile));
      await _firestore
          .collection('users')
          .doc(user.id.getOrCrash())
          .set(userDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ProfileFailure.insufficientPermission());
      } else {
        return left(const ProfileFailure.unexpected());
      }
    } catch (e) {
      //NotAuthenticatedError
      return left(const ProfileFailure.insufficientPermission());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateProfileData(
      Profile userProfile) async {
    try {
     // print("updateProfileData");
      var user =  _firestore.userBuilder();
      final userDoc =
          _firestore.collection('users').doc(user.id.getOrCrash());
      final userDto =
          UserProfileDto.fromDomain(user.copyWith(profile: userProfile));

      await userDoc.set(userDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ProfileFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const ProfileFailure.unableToUpdate());
      } else {
        return left(const ProfileFailure.unexpected());
      }
    } catch (e) {
      //NotAuthenticatedError
      return left(const ProfileFailure.insufficientPermission());
    }
  }

  @override
  Future<Either<ProfileFailure, User>> getProfileData() async {
    try {
      final userDoc =  _firestore.userDocument();
      User user = await userDoc.get().then((snapshot) {
        return UserProfileDto.fromFirestore(snapshot).toDomian();
      });
      return right(user);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ProfileFailure.insufficientPermission());
      } else {
        return left(const ProfileFailure.unexpected());
      }
    }
  }
}
