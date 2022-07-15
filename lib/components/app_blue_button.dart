import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_text_styles.dart';

class AppBlueButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  final double? width;

  const AppBlueButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: width ?? MediaQuery.of(context).size.width - 20.w,
      child: ElevatedButton(
        onPressed:  onPressed,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.blue.shade400),
          elevation: MaterialStateProperty.all<double>(10),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.r),
              ),
            ),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyle.nunitoW600S16.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
