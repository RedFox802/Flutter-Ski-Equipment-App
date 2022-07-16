import 'dart:developer';

import 'package:equipment/components/app_blue_button.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    var disableStarIcon =
        Assets.icons.iconStar.svg(color: Colors.grey.shade500);
    var enableStarIcon = Assets.icons.iconStar.svg(color: Colors.yellowAccent);
    double value = 0;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.h),
              Text('Оставьте отзыв', style: AppTextStyle.nunitoW700S18),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
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
                    log('v $v');
                    setState(() {
                      value = v;
                      log('new val $value');
                    });
                  },
                  starBuilder: (index, color) {
                    log('index $index');
                    log('value $value');
                    log('bool ${index < value}');
                    return index < value ? enableStarIcon : disableStarIcon;
                  },
                  starCount: 5,
                  starSize: 28.r,
                  maxValue: 5,
                  starSpacing: 8.w,
                  valueLabelVisibility: false,
                ),
              ),
              const Spacer(),
              AppBlueButton(
                text: 'Оставить отзыв',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
