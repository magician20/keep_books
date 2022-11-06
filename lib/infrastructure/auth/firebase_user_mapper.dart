import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:keep_books/domain/auth/entities/user.dart';
import 'package:keep_books/domain/auth/validate/value_objects.dart';
import 'package:keep_books/domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  User? toDomainUser() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      emailAddress: EmailAddress(email!),
    );
  }
}
