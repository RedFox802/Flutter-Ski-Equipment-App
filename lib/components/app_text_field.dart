import 'package:equipment/components/app_input_borders.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final String text;
  final String hint;
  final String? buttonText;
  final void Function()? onTap;
  final IconData? icon;
  final TextEditingController controller;

  const AppTextField({
    Key? key,
    required this.text,
    required this.hint,
    this.icon,
    required this.controller,
    this.buttonText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          child: buttonText == null
              ? Text(text, style: AppTextStyle.nunitoW600S14)
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(text, style: AppTextStyle.nunitoW600S14),
                    GestureDetector(
                      onTap: onTap,
                      child: Text(
                        buttonText!,
                        style: AppTextStyle.nunitoW600S14
                            .copyWith(color: Colors.blueAccent),
                      ),
                    )
                  ],
                ),
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
              suffixIcon: icon != null
                  ? Icon(
                      icon,
                      size: 30,
                    )
                  : null),
        )
      ],
    );
  }
}
