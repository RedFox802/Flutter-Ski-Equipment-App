import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/components/default_app_bar.dart';
import 'package:equipment/features/catalog_page/domain/entity/rental/rental_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../catalog_page/domain/entity/products/product_entity.dart';
import '../components/coast_container.dart';

class EquipmentScreen extends StatefulWidget {
  final ProductEntity productEntity;
  final RentalEntity rental;

  const EquipmentScreen({
    Key? key,
    required this.productEntity,
    required this.rental,
  }) : super(key: key);

  @override
  State<EquipmentScreen> createState() => _EquipmentScreenState();
}

class _EquipmentScreenState extends State<EquipmentScreen> {
  bool isRead = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.productEntity.name,
              style: AppTextStyle.nunitoW700S18,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Text(
                'Описание',
                style: AppTextStyle.nunitoW700S14,
              ),
            ),
            !isRead
                ? Text(
                    widget.productEntity.description,
                    style: AppTextStyle.nunitoW600S14,
                    maxLines: !isRead ? 2 : 10,
                    overflow: TextOverflow.ellipsis,
                  )
                : Text(
                    widget.productEntity.description,
                    style: AppTextStyle.nunitoW600S14,
                  ),
            Padding(
              padding: EdgeInsets.only(top: 6.h, bottom: 20.h),
              child: GestureDetector(
                child: Text(
                  !isRead ? 'Читать далее' : 'Свернуть',
                  style:
                      AppTextStyle.nunitoW600S14.copyWith(color: Colors.blue),
                ),
                onTap: () {
                  setState(() {
                    isRead = !isRead;
                  });
                },
              ),
            ),
            if (!isRead)
              Text(
                'Фото',
                style: AppTextStyle.nunitoW700S14,
              ),
            SizedBox(height: 10.h),
            if (!isRead)
              SizedBox(
                height: 170.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: Assets.images.imSki.image(),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: Assets.images.imSki.image(),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: Assets.images.imSki.image(),
                    ),
                  ],
                ),
              ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                'Цены',
                style: AppTextStyle.nunitoW600S14,
              ),
            ),
            Text(
              'Выберите интересующую опцию и перейдите к бронированию',
              style: AppTextStyle.nunitoW600S12,
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: ListView(
                children: [
                  Wrap(
                    spacing: 6.w,
                    children: [
                      for (int i = 0;
                          i < widget.productEntity.prices.length;
                          i++)
                        PriceContainer(
                          priceEntity: widget.productEntity.prices[i],
                          rental: widget.rental,
                          productEntity: widget.productEntity,
                        ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
