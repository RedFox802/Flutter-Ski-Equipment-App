import 'package:equipment/components/app_blue_button.dart';
import 'package:equipment/components/app_buttons_row.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/app_text_field.dart';
import '../../boking_result_page/presentation/screens/booking_result_screen.dart';
import '../domain/receiving_cubit.dart';
import '../domain/state/receiving_state.dart';

class ReceivingScreen extends StatefulWidget {
  const ReceivingScreen({Key? key}) : super(key: key);

  @override
  State<ReceivingScreen> createState() => _ReceivingScreenState();
}

class _ReceivingScreenState extends State<ReceivingScreen> {

  bool isDelivery=true;

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
                      isFirstButton: isDelivery,
                      firstOnTap: () {
                        if (!isDelivery) {
                          setState((){
                            isDelivery=!isDelivery;
                          });
                        }
                      },
                      secondOnTap: () {
                        if (isDelivery) {
                         setState((){
                           isDelivery=!isDelivery;
                         });
                        }
                      },
                    ),
                  ),
                  AppTextField(
                    text: 'Дата получения',
                    hint: 'Введите дату доставки',
                    controller: controller,
                    icon: Icons.calendar_month,
                  ),
                  isDelivery
                      ? Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: AppTextField(
                            text: 'Адрес получения',
                            hint: 'Введите адрес доставки',
                            buttonText: 'Карта',
                            controller: controller,
                            icon: Icons.place_outlined,
                            onTap: () {},
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          child: AppTextField(
                            text: 'Наш адрес',
                            buttonText: 'Построить маршрут',
                            controller: controller2,
                            readOnly: true,
                            onTap: () {},
                          ),
                        ),
                  AppTextField(
                    text: 'Описание',
                    hint: 'Введите описание',
                    controller: controller,
                  ),
                  SizedBox(height: 120.h),
                  AppBlueButton(
                    text: 'Забронировать',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((_) => const BookingResultScreen()),
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
