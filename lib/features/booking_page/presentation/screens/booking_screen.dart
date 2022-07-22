import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/components/default_app_bar.dart';
import 'package:equipment/features/booking_page/domain/booking_cubit.dart';
import 'package:equipment/features/catalog_page/domain/entity/price/price_entity.dart';
import 'package:equipment/features/catalog_page/domain/entity/rental/rental_entity.dart';
import 'package:equipment/features/home_page/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../components/app_blue_button.dart';
import '../../../../components/app_error.dart';
import '../../../catalog_page/domain/entity/products/product_entity.dart';
import '../../../questionnaire_adding_page/presentation/screens/questionnaire_adding_screen.dart';
import '../../../receiving_page/screens/receiving_screen.dart';
import '../../domain/state/booking_state.dart';
import '../components/questionnaire_container.dart';

class BookingScreen extends StatefulWidget {
  final ProductEntity productEntity;
  final PriceEntity priceEntity;
  final RentalEntity rental;

  const BookingScreen({
    Key? key,
    required this.productEntity,
    required this.rental,
    required this.priceEntity,
  }) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DefaultAppBar(),
      body: BlocConsumer<BookingCubit, BookingState>(
        listener: (BuildContext context, BookingState state) {
          if (state.error) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const HomeScreen();
                },
              ),
              (route) => false,
            );
            AppError.showError(
              'Произошла ошибка!',
              context,
            );
          }
        },
        builder: (BuildContext context, BookingState state) {
          return Stack(children: [
            if (state.loading)
              const SpinKitSpinningLines(color: Colors.blue, size: 100),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Opacity(
                opacity: state.loading ? 0.2 : 1,
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
                              widget.productEntity.name,
                              style: AppTextStyle.nunitoW600S16
                                  .copyWith(color: Colors.blue.shade400),
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
                              '${widget.priceEntity.period} дня',
                              style: AppTextStyle.nunitoW600S16
                                  .copyWith(color: Colors.blue.shade400),
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
                                        .copyWith(color: Colors.blue.shade400),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: ((_) =>
                                            const QuestionnaireAddingScreen(
                                              isUpdate: false,
                                            )),
                                      ),
                                    );
                                  },
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
                            alignment: state.questionnaires.length > 1
                                ? WrapAlignment.center
                                : WrapAlignment.start,
                            spacing: 8.w,
                            children: [
                              for (int i = 0;
                                  i < state.questionnaires.length;
                                  i++)
                                QuestionnaireContainer2(
                                  isEnabled:
                                      state.currentIndex == i ? true : false,
                                  index: i,
                                  questionnaireEntity: state.questionnaires[i],
                                ),
                            ],
                          )
                        ],
                      ),
                    ),
                    AppBlueButton(
                      text: 'Продолжить',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((_) => ReceivingScreen(
                                  productEntity: widget.productEntity,
                                  rental: widget.rental,
                                  priceEntity: widget.priceEntity,
                                )),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ]);
        },
      ),
    );
  }
}
