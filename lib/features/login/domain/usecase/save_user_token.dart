import 'package:ayurvedic_patient_management_app/features/login/domain/repository/auth_repo.dart';

class SaveUserTokenUseCase {
  final AuthRepo repo;

  SaveUserTokenUseCase(this.repo);

  Future<void> call(String token) {
    return repo.saveUserToken(token);
  }
}