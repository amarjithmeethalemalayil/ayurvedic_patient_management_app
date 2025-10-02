import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final Function()? onPressed;
  final String buttonLabel;
  const AppButton({super.key, this.onPressed, required this.buttonLabel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: 350.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9.r),
          ),
        ),
        child: Text(buttonLabel),
      ),
    );
  }
}
