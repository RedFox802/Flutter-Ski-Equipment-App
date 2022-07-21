import 'package:equipment/components/app_input_borders.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final String text;
  final String? hint;
  final String? buttonText;
  final void Function()? onTap;
  final Widget? icon;
  final bool readOnly;
  final TextEditingController controller;

  const AppTextField({
    Key? key,
    required this.text,
    this.hint,
    this.icon,
    required this.controller,
    this.buttonText,
    this.onTap,
    this.readOnly = false,
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
                            .copyWith(color: Colors.blue),
                      ),
                    )
                  ],
                ),
        ),
        TextFormField(
          readOnly: readOnly,
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppTextStyle.nunitoW600S14
                .copyWith(color: Colors.grey.shade500),
            filled: true,
            fillColor: Colors.grey.shade50,
            border: AppInputBorders.telephoneInputBorder,
            errorBorder: AppInputBorders.telephoneInputBorder,
            disabledBorder: AppInputBorders.telephoneInputBorder,
            enabledBorder: AppInputBorders.telephoneInputBorder,
            focusedBorder: AppInputBorders.telephoneInputBorder,
            focusedErrorBorder: AppInputBorders.telephoneInputBorder,
            suffixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
              child: icon,
            ),
          ),
        )
      ],
    );
  }
}
