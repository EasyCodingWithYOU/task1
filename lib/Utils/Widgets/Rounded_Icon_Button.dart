import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';

class RoundedIconButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;
  final String text;

  const RoundedIconButton({
    Key? key,
    required this.imagePath,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 90.0.w),
        child: Container(
          height: MediaQuery.of(context).size.height * .07,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
          decoration: BoxDecoration(
            color: ButtonBackGroundColor, // Background color
            borderRadius: BorderRadius.circular(26), // Rounded border
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6.r,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                imagePath == ''
                    ? Text("")
                    : Image.asset(
                        imagePath,
                        height: 120.h,
                        width: 120.w,
                      ),
                SizedBox(width: 45.w),
                Text(
                  text,
                  style: TextStyle(
                    color: buttonForgroundColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
