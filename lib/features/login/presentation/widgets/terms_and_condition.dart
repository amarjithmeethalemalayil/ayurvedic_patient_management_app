import 'package:ayurvedic_patient_management_app/core/theme/app_colors.dart';
import 'package:ayurvedic_patient_management_app/core/theme/app_font_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: AppFontStyle.termsAndConditionTextStyle.copyWith(
            color: AppColors.primaryTextColor,
          ),
          children: [
            TextSpan(
              text:
                  'By creating or logging into an account you are agreeing with our ',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                fontSize: 12.sp,
              ),
            ),
            TextSpan(
              text: 'Terms and Conditions',
              style: AppFontStyle.termsAndConditionTextStyle,
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            TextSpan(text: ' and '),
            TextSpan(
              text: 'Privacy Policy',
              style: AppFontStyle.termsAndConditionTextStyle,
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            TextSpan(text: '.'),
          ],
        ),
      ),
    );
  }
}