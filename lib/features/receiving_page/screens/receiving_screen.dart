import 'package:equipment/components/app_blue_button.dart';
import 'package:equipment/components/app_buttons_row.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/app_text_field.dart';
import '../../review_page/presentation/screens/review_screen.dart';
import '../domain/receiving_cubit.dart';
import '../domain/state/receiving_state.dart';

class ReceivingScreen extends StatefulWidget {
  const ReceivingScreen({Key? key}) : super(key: key);

  @override
  State<ReceivingScreen> createState() => _ReceivingScreenState();
}

class _ReceivingScreenState extends State<ReceivingScreen> {
  @override
  Widget build(BuildContext cont3ext) {
    final TextEditingController controller = TextEditingController();
    final TextEditingController controller2 =
        TextEditingController(text: 'Сочи, Красная полняна, 4');

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DefaultAppBar(),
      body: BlocProvider(
        create: (BuildContext context) => ReceivingCubit(),
        child: BlocBuilder<ReceivingCubit, ReceivingState>(
          builder: (BuildContext context, ReceivingState state) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ListView(
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
                      firstOnTap: () {
                        context.read<ReceivingCubit>().setDelivery(true);
                      },
                      secondOnTap: () {
                        context.read<ReceivingCubit>().setDelivery(false);
                      },
                      isFirstButton: state.isDelivery,
                    ),
                  ),
                  AppTextField(
                    controller: controller,
                    text: 'Дата получения',
                    hint: 'Введите дату доставки',
                    icon: Icons.calendar_month,
                  ),
                  state.isDelivery
                      ? Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: AppTextField(
                            controller: controller,
                            text: 'Адрес получения',
                            hint: 'Введите адрес доставки',
                            icon: Icons.place_outlined,
                            buttonText: 'Карта',
                            onTap: () {},
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          child: AppTextField(
                            controller: controller2,
                            readOnly: true,
                            text: 'Наш адрес',
                            buttonText: 'Построить маршрут',
                            onTap: () {},
                          ),
                        ),
                  AppTextField(
                    controller: controller,
                    text: 'Описание',
                    hint: 'Введите описание',
                  ),
                  SizedBox(height: 90.h),
                  AppBlueButton(
                    text: 'Забронировать',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((_) => const ReviewScreen()),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
