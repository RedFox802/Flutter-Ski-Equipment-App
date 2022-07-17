import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../equipment_page/presentation/screens/equipment_screen.dart';

class BigProductContainer extends StatelessWidget {
  const BigProductContainer({
    Key? key,
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
                  'Горные лыжи',
                  style: AppTextStyle.nunitoW600S16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((_) => const EquipmentScreen()),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.blue,
                  ),
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
                        '2000 ₽',
                        style: AppTextStyle.nunitoW600S12,
                      ),
                    ],
                  ),
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
                          '3200 ₽',
                          style: AppTextStyle.nunitoW600S12,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '3 день',
                        style: AppTextStyle.nunitoW600S12
                            .copyWith(color: Colors.grey.shade500),
                      ),
                      Text(
                        '2900 ₽',
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
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((_) => const EquipmentScreen()),
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
