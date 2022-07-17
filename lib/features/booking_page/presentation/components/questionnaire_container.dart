import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionnaireContainer2 extends StatelessWidget {
  const QuestionnaireContainer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2 - 16.w,
          height: 70.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100,
                blurRadius: 8.r,
                spreadRadius: 4.r,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.circle_outlined,
                  color: Colors.grey.shade500,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ольга, новичек',
                      style: AppTextStyle.nunitoW600S12,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      '180 / 76 / 42',
                      style: AppTextStyle.nunitoW600S12,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 8.h),
      ],
    );
  }
}
