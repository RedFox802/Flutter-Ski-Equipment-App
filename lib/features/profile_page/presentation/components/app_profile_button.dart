import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/app_text_styles.dart';

class AppProfileButton extends StatelessWidget {
  final void Function() onTap;
  final IconData icon;
  final String text;
  final bool isUp;

  const AppProfileButton({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.text,
    required this.isUp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          height: 50.h,
          decoration: BoxDecoration(
            color: isUp ? Colors.white : null,
            borderRadius: BorderRadius.circular(10.r),
            border: !isUp ? Border.all(color: Colors.grey.shade400) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: isUp ? Colors.blueAccent : Colors.grey.shade600,
              ),
              SizedBox(width: 10.w),
              Text(
                text,
                style: AppTextStyle.nunitoW600S14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
