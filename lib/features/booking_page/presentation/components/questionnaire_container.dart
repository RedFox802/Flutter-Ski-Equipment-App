import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/features/booking_page/domain/state/booking_state.dart';
import 'package:equipment/features/profile_page/domain/entity/questionnaire/questionnaire_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/booking_cubit.dart';

class QuestionnaireContainer2 extends StatefulWidget {
  final bool isEnabled;
  final int index;
  final QuestionnaireEntity questionnaireEntity;

  const QuestionnaireContainer2({
    Key? key,
    this.isEnabled = false,
    required this.index,
    required this.questionnaireEntity,
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
                  padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            '${widget.questionnaireEntity.name},',
                            style: AppTextStyle.nunitoW600S12,
                          ),
                          Text(
                            widget.questionnaireEntity.isExperienced ? 'Опытный' : 'Новичок',
                            style: AppTextStyle.nunitoW600S12,
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            '${widget.questionnaireEntity.height} / ${widget.questionnaireEntity.weight} / ${widget.questionnaireEntity.shoeSize}',
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
