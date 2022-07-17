import 'package:equipment/components/app_input_borders.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/app_blue_button.dart';

class SupportConnectionScreen extends StatelessWidget {
  const SupportConnectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DefaultAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Связь с поддержкой',
              style: AppTextStyle.nunitoW700S18,
            ),
            SizedBox(height: 18.h),
            Text(
              'Задайте свой вопрос',
              style: AppTextStyle.nunitoW600S14,
            ),
            SizedBox(height: 6.h),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.blueGrey.shade50,
                filled: true,
                hintText: 'Введите свой вопрос',
                hintStyle: AppTextStyle.nunitoW600S14
                    .copyWith(color: Colors.grey.shade500),
                border: AppInputBorders.supportInputBorder,
                enabledBorder: AppInputBorders.supportInputBorder,
                errorBorder: AppInputBorders.supportInputBorder,
                disabledBorder: AppInputBorders.supportInputBorder,
                focusedErrorBorder: AppInputBorders.supportInputBorder,
                focusedBorder: AppInputBorders.supportInputBorder,
              ),
              maxLines: 8,
            ),
            const Spacer(),
            AppBlueButton(text: 'Отправить', onPressed: () {}),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
