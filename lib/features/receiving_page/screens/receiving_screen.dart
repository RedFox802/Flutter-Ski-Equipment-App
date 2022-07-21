import 'package:equipment/components/app_blue_button.dart';
import 'package:equipment/components/app_buttons_row.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/components/default_app_bar.dart';
import 'package:equipment/features/catalog_page/domain/entity/price/price_entity.dart';
import 'package:equipment/features/catalog_page/domain/entity/products/product_entity.dart';
import 'package:equipment/features/catalog_page/domain/entity/rental/rental_entity.dart';
import 'package:equipment/features/receiving_page/domain/entity/order_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/app_text_field.dart';
import '../../authentication_page/data/user_id_storage.dart';
import '../../boking_result_page/presentation/screens/booking_result_screen.dart';
import '../domain/receiving_cubit.dart';
import '../domain/state/receiving_state.dart';

class ReceivingScreen extends StatefulWidget {
  final RentalEntity rental;
  final ProductEntity productEntity;
  final PriceEntity priceEntity;

  const ReceivingScreen({
    Key? key,
    required this.rental,
    required this.productEntity,
    required this.priceEntity,
  }) : super(key: key);

  @override
  State<ReceivingScreen> createState() => _ReceivingScreenState();
}

class _ReceivingScreenState extends State<ReceivingScreen> {
  final UserIdStorage _userIdStorage = UserIdStorage();
  bool isDelivery = true;

  @override
  Widget build(BuildContext cont3ext) {
    final TextEditingController dateController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    final TextEditingController ourAddressController =
        TextEditingController(text: widget.rental.address);
    late OrderEntity currentOrder;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DefaultAppBar(),
      body: BlocProvider(
        create: (BuildContext context) => ReceivingCubit(),
        child: BlocConsumer<ReceivingCubit, ReceivingState>(
          listener: (BuildContext context, ReceivingState state) {
            if (state.orderCreated) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((_) => BookingResultScreen(orderEntity: currentOrder,)),
                ),
              );
            }
          },
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
                          setState(() {
                            isDelivery = !isDelivery;
                          });
                        }
                      },
                      secondOnTap: () {
                        if (isDelivery) {
                          setState(() {
                            isDelivery = !isDelivery;
                          });
                        }
                      },
                    ),
                  ),
                  AppTextField(
                    text: 'Дата получения',
                    hint: 'Введите дату доставки',
                    controller: dateController,
                    icon: Icons.calendar_month,
                  ),
                  isDelivery
                      ? Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: AppTextField(
                            text: 'Адрес получения',
                            hint: 'Введите адрес доставки',
                            buttonText: 'Карта',
                            controller: addressController,
                            icon: Icons.place_outlined,
                            onTap: () {},
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          child: AppTextField(
                            text: 'Наш адрес',
                            buttonText: 'Построить маршрут',
                            controller: ourAddressController,
                            readOnly: true,
                            onTap: () {},
                          ),
                        ),
                  AppTextField(
                    text: 'Описание',
                    hint: 'Введите описание',
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 120.h),
                  AppBlueButton(
                    text: 'Забронировать',
                    onPressed: () async {
                      List<String> dateString = dateController.text.split('.');
                      DateTime deliveryDate = DateTime(DateTime.now().year,
                          int.parse(dateString[1]), int.parse(dateString[0]));
                      DateTime endDate = deliveryDate
                          .add(Duration(days: widget.priceEntity.period));

                        currentOrder = OrderEntity(
                        id: await _userIdStorage.loadUserId(),
                        equipmentName: widget.productEntity.name,
                        rentalName: widget.rental.name,
                        dates:
                            '${deliveryDate.day}.${deliveryDate.month}-${endDate.day}.${endDate.month}',
                        isDelivery: isDelivery,
                        address: isDelivery
                            ? addressController.text
                            : ourAddressController.text,
                        period: widget.priceEntity.period,
                        price: widget.priceEntity.price,
                      );

                      await context
                          .read<ReceivingCubit>()
                          .addOrder(currentOrder);
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
