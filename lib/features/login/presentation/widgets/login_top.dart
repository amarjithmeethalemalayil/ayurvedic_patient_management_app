import 'package:ayurvedic_patient_management_app/core/assets/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginTop extends StatelessWidget {
  const LoginTop({super.key});

  @override
  Widget build(BuildContext context) {
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
}
