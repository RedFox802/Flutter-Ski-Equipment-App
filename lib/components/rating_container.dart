import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../gen/assets.gen.dart';
import 'app_text_styles.dart';

class RatingContainer extends StatelessWidget {
  final double rating;
  const RatingContainer({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.h,
      width: 52.w,
      decoration: BoxDecoration(
        color: Colors.yellow.shade600,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.w),
            child: Assets.icons.iconStar.svg(
                height: 16.h, width: 16.h, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.only(right: 4.w),
            child: Text(
              '$rating',
              style: AppTextStyle.nunitoW600S12
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
