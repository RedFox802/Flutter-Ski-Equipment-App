import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/features/orders_page/domain/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/state/orders_state.dart';
import '../components/order_container.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (BuildContext context) => OrdersCubit(),
        child: BlocBuilder<OrdersCubit, OrdersState>(
          builder: (BuildContext context, state) {
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Text(
                        'Мои заказы',
                        style: AppTextStyle.nunitoW700S18,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Expanded(
                      child: ListView(
                        children: [
                          for (int i = 0; i < state.orders.length; i++)
                            OrderContainer(
                              orderEntity: state.orders[i],
                            ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
