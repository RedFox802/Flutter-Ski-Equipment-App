import 'package:equipment/components/app_blue_button.dart';
import 'package:equipment/components/app_buttons_row.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/app_text_field.dart';

class ReceivingScreen extends StatelessWidget {
  const ReceivingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DefaultAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Способ получения',
              style: AppTextStyle.nunitoW700S18,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: AppButtonsRow(
                firstText: 'Доставка',
                secondText: 'Самовывоз',
                firstOnTap: () {},
                secondOnTap: () {},
              ),
            ),
            AppTextField(
              controller: controller,
              text: 'Дата получения',
              hint: 'Введите дату доставки',
              icon: Icons.calendar_month,
            ),
            Padding(
              padding:EdgeInsets.symmetric(vertical: 10.h),
              child: AppTextField(
                controller: controller,
                text: 'Адрес получения',
                hint: 'Введите адрес доставки',
                icon: Icons.place_outlined,
                buttonText: 'Карта',
                onTap: (){},
              ),
            ),
            AppTextField(
              controller: controller,
              text: 'Описание',
              hint: 'Введите описание',
            ),
            const Spacer(),
            AppBlueButton(onPressed: (){}, text: 'Забронировать'),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
