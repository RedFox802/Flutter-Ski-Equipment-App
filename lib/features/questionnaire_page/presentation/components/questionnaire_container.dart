import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionnaireContainer extends StatelessWidget {
  const QuestionnaireContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h,horizontal: 20.w),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 40.w,
        height: 100.h,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100 ,
                blurRadius: 8,
                spreadRadius: 4,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w,vertical: 10.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Иван, опытный',style: AppTextStyle.nunitoW600S14,),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.edit,color: Colors.blueAccent,),),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 74.w,
                        height: 36.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             const Icon(Icons.arrow_upward,),
                            Text('180',style: AppTextStyle.nunitoW600S14,),
                            SizedBox(width: 6.w),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: Container(
                          width: 74.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.person_sharp,),
                              Text('80',style: AppTextStyle.nunitoW600S14,),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 74.w,
                        height: 36.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             const Icon(Icons.snowshoeing,),
                            Text('43',style: AppTextStyle.nunitoW600S14,),
                            SizedBox(width: 6.w),
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
