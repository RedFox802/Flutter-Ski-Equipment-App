import 'package:equipment/components/app_blue_button.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/features/home_page/presentation/screens/home_screen.dart';
import 'package:equipment/features/review_page/domain/review_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../components/app_error.dart';
import '../../../../gen/assets.gen.dart';
import '../../../catalog_page/domain/entity/rental/rental_entity.dart';
import '../../domain/state/review_state.dart';

class ReviewScreen extends StatefulWidget {
  final RentalEntity rental;

  const ReviewScreen({Key? key, required this.rental}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    var disableStarIcon =
        Assets.icons.iconStar.svg(color: Colors.grey.shade500);
    var enableStarIcon = Assets.images.imStar.image();

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (BuildContext context) => ReviewCubit(),
        child: BlocConsumer<ReviewCubit, ReviewState>(
          listener: (BuildContext context, ReviewState state) {
            if (state.error) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((_) => const HomeScreen()),
                ),
              );
              AppError.showError(
                'Не удалось оставить отзыв!',
                context,
              );
            }
            if (state.ready) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((_) => const HomeScreen()),
                ),
              );
            }
          },
          builder: (BuildContext context, ReviewState state) {
            return SafeArea(
              child: Stack(
                children: [
                  if (state.loading)
                    const SpinKitSpinningLines(color: Colors.blue, size: 100),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Opacity(
                      opacity: state.loading ? 0.2 : 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 10.h),
                          Text(
                            'Оставьте отзыв',
                            style: AppTextStyle.nunitoW700S18,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.r),
                              child: Assets.images.imSki.image(),
                            ),
                          ),
                          Text(
                            'Ski & Winter',
                            style: AppTextStyle.nunitoW700S16,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 26.h),
                          Center(
                            child: RatingStars(
                              value: 0,
                              onValueChanged: (v) {
                                setState(() {
                                  value = v;
                                });
                              },
                              starBuilder: (index, color) {
                                return index < value
                                    ? enableStarIcon
                                    : disableStarIcon;
                              },
                              starCount: 5,
                              maxValue: 5,
                              starSize: 28.r,
                              starSpacing: 8.w,
                              valueLabelVisibility: false,
                            ),
                          ),
                          const Spacer(),
                          AppBlueButton(
                            text: 'Оставить отзыв',
                            onPressed: () async {
                              if (value != 0 && widget.rental.rating < 5) {
                                await context
                                    .read<ReviewCubit>()
                                    .review(widget.rental);
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
