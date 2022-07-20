import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/features/booking_page/domain/entity/order_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:avatar_view/avatar_view.dart';

class OrderContainer extends StatelessWidget {
  final OrderEntity orderEntity;

  const OrderContainer({
    Key? key,
    required this.orderEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      margin: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                orderEntity.equipmentName,
                style: AppTextStyle.nunitoW600S16,
              ),
              Text(
                orderEntity.isDelivery ? 'Доставка' : 'Самовывоз',
                style: AppTextStyle.nunitoW600S12
                    .copyWith(color: Colors.grey.shade500),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(orderEntity.dates,
                    style: AppTextStyle.nunitoW600S12
                        .copyWith(color: Colors.grey.shade500)),
                Text(
                  'Завершен',
                  style: AppTextStyle.nunitoW600S12
                      .copyWith(color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
          Text(
            orderEntity.address,
            style: AppTextStyle.nunitoW600S12,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              children: [
                AvatarView(
                  radius: 24.r,
                  avatarType: AvatarType.CIRCLE,
                  imagePath: 'assets/images/im_ski.png',
                ),
                SizedBox(width: 10.w),
                Text(
                  orderEntity.rentalName,
                  style: AppTextStyle.nunitoW600S14,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  orderEntity.period,
                  style: AppTextStyle.nunitoW600S14,
                ),
                Text(
                  '${orderEntity.price} ₽',
                  style: AppTextStyle.nunitoW600S16.copyWith(
                    color: Colors.blue.shade400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
