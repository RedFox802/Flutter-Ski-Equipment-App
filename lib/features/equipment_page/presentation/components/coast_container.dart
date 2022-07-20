import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/features/catalog_page/domain/entity/price/price_entity.dart';
import 'package:equipment/features/catalog_page/domain/entity/rental/rental_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../booking_page/presentation/screens/booking_screen.dart';
import '../../../catalog_page/domain/entity/products/product_entity.dart';

class PriceContainer extends StatelessWidget {
  final PriceEntity priceEntity;
  final ProductEntity productEntity;
  final RentalEntity rental;

  const PriceContainer({
    Key? key,
    required this.priceEntity,
    required this.productEntity,
    required this.rental,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6.h),
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
                    '${priceEntity.period} день',
                    style: AppTextStyle.nunitoW600S14
                        .copyWith(color: Colors.grey.shade500),
                  ),
                  GestureDetector(
                    child: Assets.icons.icArrowRight.svg(color: Colors.blue),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((_) => BookingScreen(
                                productEntity: productEntity,
                                rental: rental,
                                priceEntity: priceEntity,
                              )),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              Text(
                '${priceEntity.price} ₽',
                style: AppTextStyle.nunitoW600S14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
