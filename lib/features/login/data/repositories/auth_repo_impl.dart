import 'package:ayurvedic_patient_management_app/features/login/data/remote_data_source/auth_local_data_source.dart';
import 'package:ayurvedic_patient_management_app/features/login/data/remote_data_source/auth_remote_data_source.dart';
import 'package:ayurvedic_patient_management_app/features/login/domain/entity/auth_user.dart';
import 'package:ayurvedic_patient_management_app/features/login/domain/repository/auth_repo.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepoImpl({required this.remoteDataSource, required this.localDataSource});

  @override
  Future<Either<String, AuthUser>> login(String email, String password) async {
    try {
      final res = await remoteDataSource.login(
        email: email,
        password: password,
      );
      return res;
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<void> saveUserToken(String token) async {
    await localDataSource.saveToken(token);
  }
}
