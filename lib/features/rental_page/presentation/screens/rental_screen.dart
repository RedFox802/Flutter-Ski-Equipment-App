import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/rating_container.dart';
import '../../../../gen/assets.gen.dart';
import '../../../catalog_page/domain/entity/rental/rental_entity.dart';
import '../../../products_page/presentation/screens/products_screen.dart';
import '../components/product_container.dart';

class RentalScreen extends StatelessWidget {
  final RentalEntity rentalEntity;

  const RentalScreen({Key? key, required this.rentalEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.r),
                      bottomRight: Radius.circular(20.r),
                    ),
                    child: Assets.images.imSki.image(fit: BoxFit.fill),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 30.r,
                          ),
                          onTap: () {
                            Navigator.maybePop(context);
                          },
                        ),
                        GestureDetector(
                          child: Assets.images.imHeart.image(
                            width: 28.w,
                            height: 28.w,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.maybePop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      rentalEntity.name,
                      style: AppTextStyle.nunitoW700S18,
                    ),
                    RatingContainer(
                      rating: rentalEntity.rating,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    children: [
                      Assets.images.imPhone.image(
                        height: 20.w,
                        width: 20.w,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 20.w),
                      Text(
                        rentalEntity.phone,
                        style: AppTextStyle.nunitoW600S14,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Assets.icons.icLocation.svg(
                      height: 20.w,
                      width: 20.w,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      rentalEntity.address,
                      style: AppTextStyle.nunitoW600S14,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    children: [
                      Assets.icons.icCalendar.svg(
                        width: 20.w,
                        height: 20.w,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 20.w),
                      Text(
                        rentalEntity.hours,
                        style: AppTextStyle.nunitoW600S14,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Товары',
                            style: AppTextStyle.nunitoW700S14,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text('9',
                              style: AppTextStyle.nunitoW600S14
                                  .copyWith(color: Colors.grey.shade500)),
                        ],
                      ),
                      GestureDetector(
                        child: Text('Все товары',
                            style: AppTextStyle.nunitoW600S14
                                .copyWith(color: Colors.blue)),
                        onTap: () {
                          Set<String> types = {};
                          types.addAll(rentalEntity.products
                              .map((element) => element.type));

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((_) => ProductsScreen(
                                    types: types.toList(),
                                    rentalEntity: rentalEntity,
                                  )),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductContainer(
                      productEntity: rentalEntity.products.first,
                      rental: rentalEntity,
                    ),
                    ProductContainer(
                      productEntity: rentalEntity.products.last,
                      rental: rentalEntity,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Text(
                    'Описание',
                    style: AppTextStyle.nunitoW700S14,
                  ),
                ),
                Text(
                  'Крепкий удобный шлем и подобное лалала удобный шлем и подобное лалала',
                  style: AppTextStyle.nunitoW600S14,
                  maxLines: 4,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
