import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/app_blue_button.dart';
import '../components/questionnaire_container.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DefaultAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Бронирование',
                    style: AppTextStyle.nunitoW700S18,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.h, bottom: 6.h),
                    child: Text(
                      'Товар',
                      style: AppTextStyle.nunitoW600S14,
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      'Горные лыжи',
                      style: AppTextStyle.nunitoW600S16
                          .copyWith(color: Colors.blueAccent),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 26.h, bottom: 6.h),
                    child: Text(
                      'Количество дней',
                      style: AppTextStyle.nunitoW600S14,
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      '3 дня',
                      style: AppTextStyle.nunitoW600S16
                          .copyWith(color: Colors.blueAccent),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 26.h, bottom: 6.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Выберите анкету',
                          style: AppTextStyle.nunitoW600S14,
                        ),
                        GestureDetector(
                          child: Text(
                            'Добавить',
                            style: AppTextStyle.nunitoW600S14
                                .copyWith(color: Colors.blueAccent),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.2,
              child: ListView(
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 8.w,
                    children: [
                      for (int i = 0; i < 10; i++)
                        const QuestionnaireContainer2(),
                    ],
                  )
                ],
              ),
            ),
            AppBlueButton(
              text: 'Продолжить',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
