import 'package:ddd_training/Domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ddd_training/Domain/auth/user.dart' as user;

extension FirebaseUserDomainX on User {
  user.User toDomain() {
    return user.User(id: UniqueId.fromUniqueString(uid));
  }
}
