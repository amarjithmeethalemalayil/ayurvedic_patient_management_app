import 'package:ayurvedic_patient_management_app/core/services/token_storage_service.dart';

abstract interface class AuthLocalDataSource {
  Future<void> saveToken(String token);
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final TokenStorageService service;

  AuthLocalDataSourceImpl({required this.service});
  @override
  Future<void> saveToken(String token) async {
    try {
      await service.saveToken(token);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
