import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_text_styles.dart';

class AppButtonsRow extends StatelessWidget {
  final String firstText;
  final String secondText;
  final void Function() firstOnTap;
  final void Function() secondOnTap;

  const AppButtonsRow({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.firstOnTap,
    required this.secondOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.grey.shade50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.blue.shade400,
            ),
            height: 60,
            width: MediaQuery.of(context).size.width / 2 - 20.w,
            child: Center(
              child: GestureDetector(
                onTap: firstOnTap,
                child: Text(
                  firstText,
                  style:
                      AppTextStyle.nunitoW600S14.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
            ),
            height: 60,
            width: MediaQuery.of(context).size.width / 2 - 20.w,
            child: Center(
              child: GestureDetector(
                onTap: secondOnTap,
                child: Text(
                  secondText,
                  style: AppTextStyle.nunitoW600S14
                      .copyWith(color: Colors.grey.shade500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
