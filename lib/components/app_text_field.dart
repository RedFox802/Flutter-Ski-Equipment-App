import 'package:equipment/components/app_input_borders.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final String text;
  final String hint;
  final IconData icon;
  final TextEditingController controller;

  const AppTextField({
    Key? key,
    required this.text,
    required this.hint,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          child: Text(text, style: AppTextStyle.nunitoW600S14),
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: AppTextStyle.nunitoW600S14
                  .copyWith(color: Colors.grey.shade500),
              filled: true,
              fillColor: Colors.blueGrey.shade50,
              border: AppInputBorders.supportInputBorder,
              errorBorder: AppInputBorders.supportInputBorder,
              disabledBorder: AppInputBorders.supportInputBorder,
              enabledBorder: AppInputBorders.supportInputBorder,
              focusedBorder: AppInputBorders.supportInputBorder,
              focusedErrorBorder: AppInputBorders.supportInputBorder,
              suffixIcon: Icon(
                icon,
                size: 30,
              )),
        )
      ],
    );
  }
}
