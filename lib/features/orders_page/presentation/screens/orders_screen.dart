import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/order_container.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Мои заказы',
                style: AppTextStyle.nunitoW700S18,
              ),
              SizedBox(height: 10.h),
              Expanded(
                child: ListView(
                  children: [
                    for (int i = 0; i < 20; i++) const OrderContainer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
