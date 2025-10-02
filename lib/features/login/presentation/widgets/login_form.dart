import 'package:ayurvedic_patient_management_app/core/common_widgets/app_button.dart';
import 'package:ayurvedic_patient_management_app/core/common_widgets/app_spacer.dart';
import 'package:ayurvedic_patient_management_app/core/common_widgets/app_text_form_field_with_header.dart';
import 'package:ayurvedic_patient_management_app/core/constants/validators.dart';
import 'package:ayurvedic_patient_management_app/core/theme/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatelessWidget {
  final Function()? onPressed;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  const LoginForm({
    super.key,
    this.onPressed,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
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
            controller: emailController,
            validator: Validator.validateTextField,
          ),
          AppSpacer(height: 20.h),
          AppTextFormFieldWithHeader(
            header: "Password",
            hintText: "Enter password",
            controller: passwordController,
            validator: Validator.validateTextField,
          ),
          AppSpacer(height: 60.h),
          AppButton(onPressed: onPressed, buttonLabel: "Login"),
        ],
      ),
    );
  }
}
