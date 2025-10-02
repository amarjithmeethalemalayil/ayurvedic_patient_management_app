import 'package:ayurvedic_patient_management_app/core/theme/app_colors.dart';
import 'package:ayurvedic_patient_management_app/core/theme/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormFieldWithHeader extends StatelessWidget {
  final String header;
  final String hintText;
  const AppTextFormFieldWithHeader({super.key, required this.header, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: AppFontStyle.regular.copyWith(fontSize: 16.sp)
       ),
        SizedBox(height: 5.h),
        Container(
          decoration: BoxDecoration(
            color: AppColors.normalTextFieldColor,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.normalTextFieldColor, width: 1),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
            ),
            style: TextStyle(fontSize: 14.sp),
          ),
        ),
      ],
    );
  }
}
