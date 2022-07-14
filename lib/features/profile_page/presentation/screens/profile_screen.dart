import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/app_text_styles.dart';
import '../../../questionnaire_page/presentation/screen/questionnaire_screen.dart';
import '../../../support_connection_page/presentation/screens/support_connection_screen.dart';
import '../components/app_profile_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.grey.shade200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 80.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Профиль',
                      style: AppTextStyle.nunitoW700S16,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      '+ 7 964 578 84 21',
                      style: AppTextStyle.nunitoW700S16,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.h),
            AppProfileButton(
              icon: Icons.account_box_outlined,
              isUp: true,
              text: 'Мои анкеты',
              onTup: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((_) => const QuestionnaireScreen()),
                  ),
                );
              },
            ),
            SizedBox(height: 8.h),
            AppProfileButton(
              icon: Icons.info_outline,
              isUp: true,
              text: 'Связаться с поддержкой',
              onTup: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((_) => const SupportConnectionScreen()),
                  ),
                );
              },
            ),
            const Spacer(),
            AppProfileButton(
              icon: Icons.delete_outline_outlined,
              isUp: false,
              text: 'Удалить аккаунт',
              onTup: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoAlertDialog(
                      title: Text(
                        "Подтверждение",
                        style: AppTextStyle.nunitoW700S16,
                      ),
                      content: Text(
                        "Удалить ваш аккаунт?",
                        style: AppTextStyle.nunitoW600S14,
                      ),
                      actions: [
                        CupertinoDialogAction(
                            onPressed: () {},
                            child: Text(
                              "Да",
                              style: AppTextStyle.nunitoW600S14,
                            )),
                        CupertinoDialogAction(
                          onPressed: () {},
                          child: Text(
                            "Отмена",
                            style: AppTextStyle.nunitoW600S14
                                .copyWith(color: Colors.blueAccent),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: AppProfileButton(
                icon: Icons.exit_to_app_rounded,
                isUp: false,
                text: 'Выйти',
                onTup: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
