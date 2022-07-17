import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../components/coast_container.dart';

class EquipmentScreen extends StatelessWidget {
  const EquipmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Горные лыжи',
              style: AppTextStyle.nunitoW700S18,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Text(
                'Описание',
                style: AppTextStyle.nunitoW700S14,
              ),
            ),
            Text(
              'Крепкий удобный шлем и какая то фигня Крепкий удобный шлем и какая то фигня Крепкий удобный шлем и какая то фигня',
              style: AppTextStyle.nunitoW600S14,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.h, bottom: 20.h),
              child: GestureDetector(
                child: Text(
                  'Читать далее',
                  style: AppTextStyle.nunitoW600S14
                      .copyWith(color: Colors.blue),
                ),
              ),
            ),
            Text(
              'Фото',
              style: AppTextStyle.nunitoW700S14,
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 170.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Assets.images.imSki.image(),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Assets.images.imSki.image(),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Assets.images.imSki.image(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                'Цены',
                style: AppTextStyle.nunitoW600S14,
              ),
            ),
            Text(
              'Выберите интересующую опцию и перейдите к бронированию',
              style: AppTextStyle.nunitoW600S12,
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: ListView(
                children: [
                  Wrap(
                    spacing: 6.w,
                    children: [
                      for (int i = 0; i < 20; i++) const CoastContainer(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
