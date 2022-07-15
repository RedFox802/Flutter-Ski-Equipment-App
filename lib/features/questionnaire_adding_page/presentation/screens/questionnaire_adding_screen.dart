import 'package:equipment/components/app_blue_button.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/questionnaire_field.dart';

class QuestionnaireAddingScreen extends StatelessWidget {
  const QuestionnaireAddingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController heightController = TextEditingController();
    final TextEditingController weightController = TextEditingController();
    final TextEditingController shoesController = TextEditingController();

    return Scaffold(
      appBar: const DefaultAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          children: [
            Text(
              'Добавление анкеты',
              style: AppTextStyle.nunitoW700S18,
            ),
            SizedBox(height: 10.h),
            Container(
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
                      color: Colors.blue.shade400,
                    ),
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2 - 20.w,
                    child: Center(
                      child: GestureDetector(
                        child: Text(
                          'Опытный',
                          style: AppTextStyle.nunitoW600S14
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2 - 20.w,
                    child: Center(
                      child: GestureDetector(
                        child: Text(
                          'Новичок',
                          style: AppTextStyle.nunitoW600S14
                              .copyWith(color: Colors.grey.shade500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: QuestionnaireField(
                icon: Icons.person_sharp,
                text: 'Имя',
                controller: nameController,
                hint: 'Введите ваше имя',
              ),
            ),
            QuestionnaireField(
              icon: Icons.arrow_upward,
              text: 'Рост',
              controller: heightController,
              hint: 'Введите ваш рост',
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: QuestionnaireField(
                icon: Icons.person_outline_outlined,
                text: 'Вес',
                controller: weightController,
                hint: 'Введите ваш вес',
              ),
            ),
            QuestionnaireField(
              icon: Icons.ac_unit_outlined,
              text: 'Размер обуви',
              controller: shoesController,
              hint: 'Введите ваш размер обуви',
            ),
            SizedBox(height: 40.h),
            AppBlueButton(onPressed: () {}, text: 'Сохранить'),
          ],
        ),
      ),
    );
  }
}
