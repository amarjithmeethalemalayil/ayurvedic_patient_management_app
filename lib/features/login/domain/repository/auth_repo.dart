import 'package:ayurvedic_patient_management_app/features/login/domain/entity/auth_user.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepo {
  Future<Either<String, AuthUser>> login(String email,String password);
  Future<void> saveUserToken(String token);
}