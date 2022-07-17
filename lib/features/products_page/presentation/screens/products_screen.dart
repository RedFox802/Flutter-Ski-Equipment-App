import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/app_text_styles.dart';
import '../components/products_part.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 0,
        toolbarHeight: 80.h,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Text(
                    'Товары',
                    style: AppTextStyle.nunitoW700S18,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    '9',
                    style: AppTextStyle.nunitoW700S18
                        .copyWith(color: Colors.grey.shade500),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          unselectedLabelStyle: AppTextStyle.nunitoW600S12,
          labelStyle: AppTextStyle.nunitoW600S12,
          unselectedLabelColor: Colors.grey.shade500,
          labelColor: Colors.blue,
          indicatorColor: Colors.blue,
          indicatorWeight: 4,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 10.w),
          tabs: const <Widget>[
            Text('Все',),
            Text('Лыжи'),
            Text('Сноуборд'),
            Text('Шлем'),
            Text('Перчатки'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          ProductsPart(),
          ProductsPart(),
          ProductsPart(),
          ProductsPart(),
          ProductsPart(),
        ],
      ),
    );
  }
}
