import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/features/catalog_page/domain/catalog_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../domain/state/catalog_state.dart';
import '../components/rental_container.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CatalogCubit()..getRentals(),
      child: BlocBuilder<CatalogCubit, CatalogState>(
        builder: (BuildContext context, state) {
          return SafeArea(
            child: Container(
              color: Colors.grey.shade100,
              child: Column(
                children: [
                  Container(
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.r),
                        bottomRight: Radius.circular(20.r),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Лучшие прокаты',
                            style: AppTextStyle.nunitoW700S16,
                          ),
                          Assets.icons.iconSett.svg(height: 26.h),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      children: [
                        Center(
                          child: Wrap(
                            children: [
                              for (int i = 0; i < state.rentals.length; i++)
                                RentalContainer(rentalEntity: state.rentals[i],),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
