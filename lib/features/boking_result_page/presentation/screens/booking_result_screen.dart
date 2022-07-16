import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/components/default_app_bar.dart';
import 'package:equipment/features/orders_page/presentation/components/order_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../review_page/presentation/screens/review_screen.dart';

class BookingResultScreen extends StatelessWidget {
  const BookingResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        leading: false,
        action: GestureDetector(
          child: Icon(
            Icons.add,
            color: Colors.grey.shade800,
            size: 26.r,
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
                padding: EdgeInsets.all(16.w),
                width: 120.w,
                height: 120.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green.shade50,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green.shade300,
                  ),
                  child: SizedBox(
                    height: 30.h,
                    width: 30.h,
                    child: Assets.icons.icOk.svg(color: Colors.white),
                  ),
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
            const OrderContainer()
          ],
        ),
      ),
    );
  }
}
