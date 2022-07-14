import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';

class RentalContainer extends StatelessWidget {
  const RentalContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 4;
    double width = MediaQuery.of(context).size.width / 2 - 24.w;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
      child: GestureDetector(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: Stack(
              children: [
                Align(
                  alignment: const Alignment(0, -1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Assets.images.imSki.image(
                        height: height * 0.6,
                        width: width - 20.w,
                        fit: BoxFit.fill),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
                  child: Align(
                      alignment: const Alignment(0, 1),
                      child: Text('Название проката',
                          style: AppTextStyle.nunitoW600S14)),
                ),
                Positioned(
                  top: height * 0.48,
                  right: 22.w,
                  child: Container(
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
                          child: Assets.icons.iconStar.svg(height: 16.h,width: 16.h,color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 4.w),
                          child: Text(
                            '4.7',
                            style: AppTextStyle.nunitoW600S12.copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
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
