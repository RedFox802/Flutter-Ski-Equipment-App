import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../profile_page/domain/entity/questionnaire/questionnaire_entity.dart';
import '../../../questionnaire_adding_page/presentation/screens/questionnaire_adding_screen.dart';

class QuestionnaireContainer extends StatelessWidget {
  final QuestionnaireEntity questionnaireEntity;

  const QuestionnaireContainer({
    Key? key,
    required this.questionnaireEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 20.w),
      child: SizedBox(
        width: MediaQuery
            .of(context)
            .size
            .width - 40.w,
        height: 100.h,
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
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${questionnaireEntity.name}, ${questionnaireEntity
                          .isExperienced ? 'Опытный' : 'Новичок'}',
                      style: AppTextStyle.nunitoW600S16,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((_) =>
                                QuestionnaireAddingScreen(
                                  isUpdate: true,
                                  entity: questionnaireEntity,
                                )),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 74.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.icons.icHeight.svg(color: Colors.grey.shade700,
                            height: 32.w,
                            width: 32.w,),
                          Text(
                            questionnaireEntity.height,
                            style: AppTextStyle.nunitoW600S14,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.symmetric(horizontal: 6.w),
                      width: 74.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.icons.icScales.svg(color: Colors.grey
                              .shade700),
                          SizedBox(width: 6.w,),
                          Text(
                            questionnaireEntity.weight,
                            style: AppTextStyle.nunitoW600S14,
                          ),
                        ],
                      ),

                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      width: 74.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Assets.icons.icShoe.svg(color: Colors.grey.shade700,
                              height: 30.w,
                              width: 30.w),
                          Text(
                            questionnaireEntity.shoeSize,
                            style: AppTextStyle.nunitoW600S14,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
