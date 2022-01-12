import 'package:dartz/dartz.dart';
import 'package:ddd_training/Domain/auth/auth_failure.dart';
import 'package:ddd_training/Domain/auth/user.dart';
import 'package:ddd_training/Domain/auth/value_objects.dart';


abstract class IAuthFacade {
  Future<Option<User>> getSignedUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
