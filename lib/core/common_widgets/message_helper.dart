import 'package:ayurvedic_patient_management_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MessageHelper {
  static void showErrorMessage(BuildContext context, String message) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: AppColors.errorColor,
          duration: const Duration(seconds: 3),
        ),
      );
    });
  }
}
