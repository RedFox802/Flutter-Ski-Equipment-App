import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/app_text_styles.dart';
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
              onTup: () {},
              isUp: true,
              text: 'Мои анкеты',
            ),
            SizedBox(height: 8.h),
            AppProfileButton(
              icon: Icons.info_outline,
              onTup: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((_) => const SupportConnectionScreen()),
                  ),
                );
              },
              isUp: true,
              text: 'Связаться с поддержкой',
            ),
            const Spacer(),
            AppProfileButton(
              icon: Icons.delete_outline_outlined,
              onTup: () {},
              isUp: false,
              text: 'Удалить аккаунт',
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: AppProfileButton(
                icon: Icons.exit_to_app_rounded,
                onTup: () {},
                isUp: false,
                text: 'Выйти',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
