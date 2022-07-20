import 'package:equipment/features/catalog_page/domain/entity/rental/rental_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/app_text_styles.dart';
import '../components/products_part.dart';

class ProductsScreen extends StatefulWidget {
  final RentalEntity rentalEntity;
  final List<String> types;

  const ProductsScreen({
    Key? key,
    required this.rentalEntity,
    required this.types,
  }) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController =
        TabController(length: widget.types.length + 1, vsync: this);
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
              GestureDetector(
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.maybePop(context);
                },
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
                    "${widget.rentalEntity.products.length}",
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
          controller: tabController,
          unselectedLabelStyle: AppTextStyle.nunitoW600S12,
          labelStyle: AppTextStyle.nunitoW600S12,
          unselectedLabelColor: Colors.grey.shade500,
          labelColor: Colors.blue,
          indicatorColor: Colors.blue,
          indicatorWeight: 3,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r), color: Colors.blue),
          indicatorPadding: EdgeInsets.only(top: 18.h, left: 10.w, right: 10.w),
          tabs: <Widget>[
            const Text(
              'Все',
            ),
            for (int i = 0; i < widget.types.length; i++) Text(widget.types[i]),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          ProductsPart(
            rentalEntity: widget.rentalEntity,
            products: widget.rentalEntity.products,
          ),
          for (int i = 0; i < widget.types.length; i++)
            ProductsPart(
              rentalEntity: widget.rentalEntity,
              products: widget.rentalEntity.products
                  .where((element) => element.type == widget.types[i])
                  .toList(),
            ),
        ],
      ),
    );
  }
}
