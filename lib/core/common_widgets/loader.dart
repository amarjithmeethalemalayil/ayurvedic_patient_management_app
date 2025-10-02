import 'package:ayurvedic_patient_management_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(color: AppColors.buttonColor,),
    );
  }
}
