import 'package:equipment/components/app_blue_button.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/app_buttons_row.dart';
import '../../../../components/app_text_field.dart';
import '../../../home_page/presentation/screens/home_screen.dart';

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
            AppButtonsRow(
              isFirstButton: true,
              firstText: 'Опытный',
              secondText: 'Новичок',
              firstOnTap: () {},
              secondOnTap: () {},
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: AppTextField(
                icon: Icons.person_sharp,
                controller: nameController,
                text: 'Имя',
                hint: 'Введите ваше имя',
              ),
            ),
            AppTextField(
              icon: Icons.arrow_upward,
              controller: heightController,
              text: 'Рост',
              hint: 'Введите ваш рост',
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: AppTextField(
                icon: Icons.person_outline_outlined,
                controller: weightController,
                text: 'Вес',
                hint: 'Введите ваш вес',
              ),
            ),
            AppTextField(
              icon: Icons.ac_unit_outlined,
              controller: shoesController,
              text: 'Размер обуви',
              hint: 'Введите ваш размер обуви',
            ),
            SizedBox(height: 40.h),
            AppBlueButton(
              text: 'Сохранить',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((_) => const HomeScreen()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
