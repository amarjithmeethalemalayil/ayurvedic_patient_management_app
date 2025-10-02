import 'package:ayurvedic_patient_management_app/features/login/domain/usecase/login_usecase.dart';
import 'package:ayurvedic_patient_management_app/features/login/domain/usecase/save_user_token.dart';
import 'package:flutter/foundation.dart';
import 'package:ayurvedic_patient_management_app/features/login/domain/entity/auth_user.dart';

class LoginProvider with ChangeNotifier {
  final LoginUseCase loginUseCase;
  final SaveUserTokenUseCase saveTokenUsecase;

  LoginProvider({required this.loginUseCase, required this.saveTokenUsecase});

  bool _isLoading = false;
  String _error = "";
  AuthUser? _user;

  bool get isLoading => _isLoading;
  String get error => _error;
  AuthUser? get user => _user;

  Future<void> login(String email, String password) async {
    _isLoading = true;
    notifyListeners();
    final result = await loginUseCase(email: email, password: password);
    result.match(
      (err) {
        _error = err;
      },
      (authUser) {
        saveTokenUsecase(authUser.token);
        _user = authUser;
      },
    );

    _isLoading = false;
    notifyListeners();
  }
}
