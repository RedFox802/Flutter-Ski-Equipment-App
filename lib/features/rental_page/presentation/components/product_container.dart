import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductContainer extends StatelessWidget {
  final String name;
  final int oneDay;
  final int? twoDay;
  final int? threeDay;
  final int? fourDay;

  const ProductContainer({
    Key? key,
    required this.name,
    required this.oneDay,
    required this.twoDay,
    required this.threeDay,
    required this.fourDay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 20.w,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade100,
              blurRadius: 8,
              spreadRadius: 4,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: AppTextStyle.nunitoW600S12,
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1 день',
                          style: AppTextStyle.nunitoW600S12
                              .copyWith(color: Colors.grey.shade500),
                        ),
                        Text(
                          '$oneDay ₽',
                          style: AppTextStyle.nunitoW600S12,
                        ),
                        SizedBox(height: 6.h),
                        if (threeDay != null)
                          Text(
                            '3 день',
                            style: AppTextStyle.nunitoW600S12
                                .copyWith(color: Colors.grey.shade500),
                          ),
                        if (threeDay != null)
                          Text(
                            '$threeDay ₽',
                            style: AppTextStyle.nunitoW600S12,
                          )
                      ],
                    ),
                    if (twoDay != null)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2 день',
                            style: AppTextStyle.nunitoW600S12
                                .copyWith(color: Colors.grey.shade500),
                          ),
                          Text(
                            '$twoDay ₽',
                            style: AppTextStyle.nunitoW600S12,
                          ),
                          SizedBox(height: 6.h,),
                          if (fourDay != null)
                            Text(
                              '4 день',
                              style: AppTextStyle.nunitoW600S12
                                  .copyWith(color: Colors.grey.shade500),
                            ),
                          if (fourDay != null)
                            Text(
                              '$fourDay ₽',
                              style: AppTextStyle.nunitoW600S12,
                            )
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
