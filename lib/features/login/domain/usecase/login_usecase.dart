import 'package:ayurvedic_patient_management_app/features/login/domain/entity/auth_user.dart';
import 'package:ayurvedic_patient_management_app/features/login/domain/repository/auth_repo.dart';
import 'package:fpdart/fpdart.dart';

class LoginUseCase {
  final AuthRepo repo;

  LoginUseCase(this.repo);

  Future<Either<String, AuthUser>> call({
    required String email,
    required String password,
  }) async {
    return await repo.login(email, password);
  }
}