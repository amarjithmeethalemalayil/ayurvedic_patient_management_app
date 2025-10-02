import '../../domain/entity/auth_user.dart';

class AuthUserModel extends AuthUser {
  AuthUserModel({required super.token});

  factory AuthUserModel.fromJson(Map<String, dynamic> json) {
    return AuthUserModel(
      token: json['token'],
    );
  }
}
