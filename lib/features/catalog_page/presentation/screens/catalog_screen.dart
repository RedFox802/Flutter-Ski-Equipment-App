import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/rental_container.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.grey.shade200,
        child: Column(
          children: [
            Container(
              height: 60.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Лучшие прокаты',
                      style: AppTextStyle.nunitoW700S16,
                    ),
                    const Icon(Icons.settings),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                children: [
                  Center(
                    child: Wrap(
                      children: [
                        for (int i = 0; i < 10; i++) const RentalContainer(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
