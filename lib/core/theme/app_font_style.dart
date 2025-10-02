import 'package:ayurvedic_patient_management_app/core/theme/app_colors.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFontStyle {
  static final termsAndConditionTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w300,
    fontSize: 12.sp,
    color: AppColors.termsAndConditionTextColor,
  );
  static final regular = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );
  static final semiBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );
}
