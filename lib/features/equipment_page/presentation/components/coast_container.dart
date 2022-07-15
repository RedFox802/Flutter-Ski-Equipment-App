import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../booking_page/presentation/screens/booking_screen.dart';

class CoastContainer extends StatelessWidget {
  const CoastContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(bottom: 6.h),
      child: Container(
        width: MediaQuery.of(context).size.width / 2 - 20.w,
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1 день',
                    style: AppTextStyle.nunitoW600S14
                        .copyWith(color: Colors.grey.shade500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((_) => const BookingScreen()),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              Text(
                '10 000 ₽',
                style: AppTextStyle.nunitoW600S14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
