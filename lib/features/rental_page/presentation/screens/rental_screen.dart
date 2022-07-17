import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/rating_container.dart';
import '../../../../gen/assets.gen.dart';
import '../../../products_page/presentation/screens/products_screen.dart';
import '../components/product_container.dart';

class RentalScreen extends StatelessWidget {
  const RentalScreen({Key? key}) : super(key: key);

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
                          child: Icon(
                            Icons.heart_broken_rounded,
                            color: Colors.white,
                            size: 30.r,
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
                      'Ski & Winter',
                      style: AppTextStyle.nunitoW700S18,
                    ),
                    const RatingContainer(
                      rating: 4.7,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.blueAccent,
                        size: 26.r,
                      ),
                      SizedBox(width: 20.w),
                      Text(
                        '+ 7 885 485 76 43',
                        style: AppTextStyle.nunitoW600S14,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.place_outlined,
                      color: Colors.blueAccent,
                      size: 26.r,
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      'Сочи, Красная поляна, 2',
                      style: AppTextStyle.nunitoW600S14,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.help_outline_rounded,
                        color: Colors.blueAccent,
                        size: 26.r,
                      ),
                      SizedBox(width: 20.w),
                      Text(
                        'C 10-19 ч.',
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((_) => const ProductsScreen()),
                            ),
                          );
                        },
                        child: Text('Все товары',
                            style: AppTextStyle.nunitoW600S14
                                .copyWith(color: Colors.blueAccent)),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ProductContainer(
                      name: 'Горные лыжи',
                      oneDay: 4000,
                      twoDay: 5900,
                      threeDay: 6400,
                      fourDay: 12000,
                    ),
                    ProductContainer(
                      name: 'Сноуборд',
                      oneDay: 5000,
                      twoDay: 8700,
                      threeDay: 9560,
                      fourDay: 11340,
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
