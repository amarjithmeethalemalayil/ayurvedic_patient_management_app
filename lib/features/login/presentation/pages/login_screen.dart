import 'package:ayurvedic_patient_management_app/core/common_widgets/loader.dart';
import 'package:ayurvedic_patient_management_app/features/home/presentation/pages/home_screen.dart';
import 'package:ayurvedic_patient_management_app/features/login/presentation/login_provider/login_provider.dart';
import 'package:ayurvedic_patient_management_app/features/login/presentation/widgets/login_form.dart';
import 'package:ayurvedic_patient_management_app/features/login/presentation/widgets/login_top.dart';
import 'package:ayurvedic_patient_management_app/features/login/presentation/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _key = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login(LoginProvider loginProvider) {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    loginProvider.login(email, password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<LoginProvider>(
        builder: (context, loginProvider, _) {
          if (loginProvider.user != null) {
            return const HomeScreen();
          }
          if (loginProvider.isLoading) {
            return const Loader();
          }
          if (loginProvider.error.isNotEmpty) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(loginProvider.error),
                  backgroundColor: Colors.red,
                  duration: const Duration(seconds: 3),
                ),
              );
            });
          }

          return _loginPage(loginProvider);
        },
      ),
    );
  }

  Widget _loginPage(LoginProvider loginProvider) {
    return Form(
      key: _key,
      child: SafeArea(
        child: Column(
          children: [
            const LoginTop(),
            Expanded(
              child: SingleChildScrollView(
                child: LoginForm(
                  emailController: _emailController,
                  passwordController: _passwordController,
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      _login(loginProvider);
                    }
                  },
                ),
              ),
            ),
            const TermsAndCondition(),
          ],
        ),
      ),
    );
  }
}
