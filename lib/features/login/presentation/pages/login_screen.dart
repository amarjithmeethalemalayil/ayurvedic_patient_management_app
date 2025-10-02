import 'package:ayurvedic_patient_management_app/core/assets/app_assets.dart';
import 'package:ayurvedic_patient_management_app/core/common_widgets/app_button.dart';
import 'package:ayurvedic_patient_management_app/core/common_widgets/app_spacer.dart';
import 'package:ayurvedic_patient_management_app/core/common_widgets/app_text_form_field_with_header.dart';
import 'package:ayurvedic_patient_management_app/core/theme/app_colors.dart';
import 'package:ayurvedic_patient_management_app/core/theme/app_font_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _loginPageTop(),
            Expanded(child: SingleChildScrollView(child: _loginForm())),
            _termsAndCondition(),
          ],
        ),
      ),
    );
  }

  Widget _loginPageTop() {
    return Container(
      height: 211.h,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.loginPageTopImage),
          fit: BoxFit.cover,
        ),
      ),
      child: SizedBox(
        width: 80.w,
        height: 84.h,
        child: Image.asset(AppAssets.loginPageTopLogo),
      ),
    );
  }

  Widget _loginForm() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          AppSpacer(height: 30.h),
          Text(
            "Login or register to book your appointments",
            style: AppFontStyle.semiBold.copyWith(fontSize: 24.sp),
          ),
          AppSpacer(height: 30.h),
          AppTextFormFieldWithHeader(
            header: "Email",
            hintText: "Enter your email",
          ),
          AppSpacer(height: 20.h),
          AppTextFormFieldWithHeader(
            header: "Password",
            hintText: "Enter password",
          ),
          AppSpacer(height: 60.h),
          AppButton(onPressed: () {}, buttonLabel: "Login"),
        ],
      ),
    );
  }

  Widget _termsAndCondition() {
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
