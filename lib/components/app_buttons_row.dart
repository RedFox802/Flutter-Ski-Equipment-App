import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_text_styles.dart';

class AppButtonsRow extends StatefulWidget {
  final bool isFirstButton;
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
    required this.isFirstButton,
  }) : super(key: key);

  @override
  State<AppButtonsRow> createState() => _AppButtonsRowState();
}

class _AppButtonsRowState extends State<AppButtonsRow> {
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
              color: widget.isFirstButton
                  ? Colors.blue.shade400
                  : Colors.grey.shade50,
            ),
            height: 46.h,
            width: MediaQuery.of(context).size.width / 2 - 20.w,
            child: Center(
              child: GestureDetector(
                onTap: widget.firstOnTap,
                child: Text(
                  widget.firstText,
                  style: widget.isFirstButton
                      ? AppTextStyle.nunitoW600S14.copyWith(color: Colors.white)
                      : AppTextStyle.nunitoW600S14
                          .copyWith(color: Colors.grey.shade500),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: !widget.isFirstButton
                  ? Colors.blue.shade400
                  : Colors.grey.shade50,
              borderRadius: BorderRadius.circular(10.r),
            ),
            height: 46.h,
            width: MediaQuery.of(context).size.width / 2 - 20.w,
            child: Center(
              child: GestureDetector(
                onTap: widget.secondOnTap,
                child: Text(
                  widget.secondText,
                  style: !widget.isFirstButton
                      ? AppTextStyle.nunitoW600S14.copyWith(color: Colors.white)
                      : AppTextStyle.nunitoW600S14
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
