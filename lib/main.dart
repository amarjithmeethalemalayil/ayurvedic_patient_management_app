import 'package:ayurvedic_patient_management_app/core/services/token_storage_service.dart';
import 'package:ayurvedic_patient_management_app/features/login/data/remote_data_source/auth_local_data_source.dart';
import 'package:ayurvedic_patient_management_app/features/login/data/repositories/auth_repo_impl.dart';
import 'package:ayurvedic_patient_management_app/features/login/domain/usecase/login_usecase.dart';
import 'package:ayurvedic_patient_management_app/features/login/domain/usecase/save_user_token.dart';
import 'package:ayurvedic_patient_management_app/features/login/presentation/login_provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ayurvedic_patient_management_app/ayurvedic_patient_management_app.dart';
import 'package:ayurvedic_patient_management_app/features/login/data/remote_data_source/auth_remote_data_source.dart';

void main() async {
  final client = http.Client();
  await dotenv.load(fileName: ".env");
  final remoteDataSource = AuthRemoteDataSourceImpl(client: client);
  final authRepo = AuthRepoImpl(
    remoteDataSource: remoteDataSource,
    localDataSource: AuthLocalDataSourceImpl(service: TokenStorageService()),
  );
  final loginUseCase = LoginUseCase(authRepo);
  final saveTokenUsecase = SaveUserTokenUseCase(authRepo);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LoginProvider(
            loginUseCase: loginUseCase,
            saveTokenUsecase: saveTokenUsecase,
          ),
        ),
      ],
      child: const AyurvedicPatientManagementApp(),
    ),
  );
}
