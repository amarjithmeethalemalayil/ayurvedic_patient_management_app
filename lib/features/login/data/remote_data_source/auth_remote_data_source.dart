import 'package:ayurvedic_patient_management_app/core/constants/api.dart';
import 'package:ayurvedic_patient_management_app/features/login/data/models/auth_user_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract interface class AuthRemoteDataSource {
  Future<Either<String, AuthUserModel>> login({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client client;

  AuthRemoteDataSourceImpl({required this.client});

  @override
  Future<Either<String, AuthUserModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      final url = Uri.parse("${ApiHelper.baseUrl}Login");
      final response = await client.post(
        url,
        headers: ApiHelper.loginHeader,
        body: {'username': email, 'password': password},
      );
      final result = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return right(AuthUserModel.fromJson(result));
      } else {
        final errorMessage = result['message'] ?? 'Unknown error';
        print(errorMessage);
        return left(errorMessage.toString());
      }
    } catch (e) {
      return left(e.toString());
    }
  }
}
