import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/components/default_app_bar.dart';
import 'package:equipment/features/orders_page/presentation/components/order_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../booking_page/domain/entity/order_entity.dart';
import '../../../review_page/presentation/screens/review_screen.dart';

class BookingResultScreen extends StatelessWidget {
  const BookingResultScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        leading: false,
        action: GestureDetector(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Assets.icons.icCross
                .svg(color: Colors.grey.shade700, height: 14.w, width: 14.w),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((_) => const ReviewScreen()),
              ),
            );
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(16.r),
                width: 120.w,
                height: 120.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green.shade50,
                ),
                child: Container(
                  padding: EdgeInsets.all(20.r),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green.shade300,
                  ),
                  child: Assets.icons.icOk.svg(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h, bottom: 60.h),
              child: Text(
                'Товар успешно забронирован!',
                style: AppTextStyle.nunitoW600S14,
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'Товар',
              style: AppTextStyle.nunitoW600S14,
            ),
            SizedBox(height: 4.h),
            const OrderContainer(
              orderEntity: OrderEntity(),
            )
          ],
        ),
      ),
    );
  }
}
