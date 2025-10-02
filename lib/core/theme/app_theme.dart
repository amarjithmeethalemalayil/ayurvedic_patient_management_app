import 'package:ayurvedic_patient_management_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.buttonTextColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) => AppColors.buttonColor,
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          (states) => AppColors.buttonTextColor,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.normalTextFieldColor,
      contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
     border: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
          color: AppColors.normalTextFieldColor,
          width: 1.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: AppColors.normalTextFieldColor, width: 1),
      ),
    ),
  );
}
