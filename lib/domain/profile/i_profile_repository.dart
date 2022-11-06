import 'package:dartz/dartz.dart';

import '../auth/entities/profile.dart';
import '../auth/entities/user.dart';
import 'profile_failure.dart';

abstract class IProfileRepository {
  //no need i already generate profile when register
  Future<Either<ProfileFailure, Unit>> createProfileData(Profile userProfile);
  Future<Either<ProfileFailure, Unit>> updateProfileData(Profile userProfile);
  Future<Either<ProfileFailure, User>> getProfileData();
}
