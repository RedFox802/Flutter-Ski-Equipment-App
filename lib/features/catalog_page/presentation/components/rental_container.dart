import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/features/catalog_page/domain/entity/rental/rental_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/rating_container.dart';
import '../../../../gen/assets.gen.dart';
import '../../../rental_page/presentation/screens/rental_screen.dart';

class RentalContainer extends StatelessWidget {
  final RentalEntity rentalEntity;

  const RentalContainer({
    Key? key,
    required this.rentalEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 4;
    double width = MediaQuery.of(context).size.width / 2 - 24.w;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((_) => RentalScreen(
                    rentalEntity: rentalEntity,
                  )),
            ),
          );
        },
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: Stack(
              children: [
                Align(
                  alignment: const Alignment(0, -1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Assets.images.imSki.image(
                        height: height * 0.6,
                        width: width - 20.w,
                        fit: BoxFit.fill),
                  ),
                ),
                Positioned(
                  bottom: 20.h,
                  left: 14.w,
                  right: 4.w,
                  child: Text(
                    rentalEntity.name,
                    style: AppTextStyle.nunitoW600S14,
                    textAlign: TextAlign.start,
                  ),
                ),
                Positioned(
                  top: height * 0.48,
                  right: 22.w,
                  child: RatingContainer(
                    rating: rentalEntity.rating,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
