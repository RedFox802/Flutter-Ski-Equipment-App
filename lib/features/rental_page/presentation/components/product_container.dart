import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/features/catalog_page/domain/entity/products/product_entity.dart';
import 'package:equipment/features/catalog_page/domain/entity/rental/rental_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../equipment_page/presentation/screens/equipment_screen.dart';

class ProductContainer extends StatelessWidget {
  final ProductEntity productEntity;
  final RentalEntity rental;

  const ProductContainer({
    Key? key,
    required this.productEntity,
    required this.rental,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 20.w,
      child: DecoratedBox(
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productEntity.name,
                    style: AppTextStyle.nunitoW700S12,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((_) => EquipmentScreen(
                                productEntity: productEntity,
                                rental: rental,
                              )),
                        ),
                      );
                    },
                    child: Assets.icons.icArrowRight.svg(color: Colors.blue),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          '${productEntity.prices.first.price} ₽',
                          style: AppTextStyle.nunitoW600S12,
                        ),
                        SizedBox(height: 6.h),
                        if (productEntity.prices.length >= 3)
                          Text(
                            '3 день',
                            style: AppTextStyle.nunitoW600S12
                                .copyWith(color: Colors.grey.shade500),
                          ),
                        if (productEntity.prices.length >= 3)
                          Text(
                            '${productEntity.prices[2].price} ₽',
                            style: AppTextStyle.nunitoW600S12,
                          )
                      ],
                    ),
                    if (productEntity.prices.length >= 2)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2 день',
                            style: AppTextStyle.nunitoW600S12
                                .copyWith(color: Colors.grey.shade500),
                          ),
                          Text(
                            '${productEntity.prices[1].price} ₽',
                            style: AppTextStyle.nunitoW600S12,
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          if (productEntity.prices.length >= 4)
                            Text(
                              '4 день',
                              style: AppTextStyle.nunitoW600S12
                                  .copyWith(color: Colors.grey.shade500),
                            ),
                          if (productEntity.prices.length >= 4)
                            Text(
                              '${productEntity.prices[3].price} ₽',
                              style: AppTextStyle.nunitoW600S12,
                            )
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
