import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/features/booking_page/domain/state/booking_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/booking_cubit.dart';

class QuestionnaireContainer2 extends StatefulWidget {
  final bool isEnabled;
  final int index;

  const QuestionnaireContainer2({
    Key? key,
    this.isEnabled = false,
    required this.index,
  }) : super(key: key);

  @override
  State<QuestionnaireContainer2> createState() =>
      _QuestionnaireContainer2State();
}

class _QuestionnaireContainer2State extends State<QuestionnaireContainer2> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingCubit, BookingState>(
      builder: (BuildContext context, state) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                context.read<BookingCubit>().changeIndex(widget.index);
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 2 - 16.w,
                height: 70.h,
                decoration: BoxDecoration(
                  border: widget.isEnabled
                      ? Border.all(color: Colors.blue, width: 2.w)
                      : null,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.r),
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
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.circle_outlined,
                        color: !widget.isEnabled
                            ? Colors.grey.shade500
                            : Colors.blue,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ольга, новичек',
                            style: AppTextStyle.nunitoW600S12,
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            '180 / 76 / 42',
                            style: AppTextStyle.nunitoW600S12,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.h),
          ],
        );
      },
    );
  }
}
