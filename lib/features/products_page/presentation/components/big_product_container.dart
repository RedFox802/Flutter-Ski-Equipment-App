import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/features/catalog_page/domain/entity/rental/rental_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../gen/assets.gen.dart';

import '../../../catalog_page/domain/entity/products/product_entity.dart';
import '../../../equipment_page/presentation/screens/equipment_screen.dart';

class BigProductContainer extends StatelessWidget {
  final RentalEntity rentalEntity;
  final ProductEntity product;

  const BigProductContainer({
    Key? key,
    required this.rentalEntity,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 20.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade100,
              blurRadius: 8.r,
              spreadRadius: 4.r,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name,
                  style: AppTextStyle.nunitoW600S16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((_) => EquipmentScreen(
                              productEntity: product,
                              rental: rentalEntity,
                            )),
                      ),
                    );
                  },
                  child: Assets.icons.icArrowRight.svg(color: Colors.blue),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1 день',
                        style: AppTextStyle.nunitoW600S12
                            .copyWith(color: Colors.grey.shade500),
                      ),
                      Text(
                        '${product.prices.first.price} ₽',
                        style: AppTextStyle.nunitoW600S12,
                      ),
                    ],
                  ),
                  if (product.prices.length >= 2)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2 день',
                            style: AppTextStyle.nunitoW600S12
                                .copyWith(color: Colors.grey.shade500),
                          ),
                          Text(
                            '${product.prices[1].price} ₽',
                            style: AppTextStyle.nunitoW600S12,
                          ),
                        ],
                      ),
                    ),
                  if (product.prices.length >= 3)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '3 день',
                          style: AppTextStyle.nunitoW600S12
                              .copyWith(color: Colors.grey.shade500),
                        ),
                        Text(
                          '${product.prices[2].price} ₽',
                          style: AppTextStyle.nunitoW600S12,
                        )
                      ],
                    ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                child: Text(
                  'Забронировать',
                  style:
                      AppTextStyle.nunitoW600S12.copyWith(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((_) => EquipmentScreen(
                            productEntity: product,
                            rental: rentalEntity,
                          )),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
