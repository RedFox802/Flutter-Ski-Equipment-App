import 'package:equipment/features/authentication_page/domain/auth_cubit.dart';
import 'package:equipment/features/authentication_page/domain/state/auth_state.dart';
import 'package:equipment/features/login_page/presentation/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/app_text_styles.dart';
import '../../../questionnaire_page/presentation/screen/questionnaire_screen.dart';
import '../../../support_connection_page/presentation/screens/support_connection_screen.dart';
import '../components/app_profile_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (BuildContext context, AuthState state) {
        return SafeArea(
          child: Container(
            color: Colors.grey.shade100,
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Профиль',
                          style: AppTextStyle.nunitoW700S16,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          state.phone ?? '',
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
                  onTap: () {
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
                  onTap: () {
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
                  onTap: () {
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
                              onPressed: () async {
                                await context.read<AuthCubit>().deleteAccount();

                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return LoginScreen();
                                    },
                                  ),
                                  (route) => false,
                                );
                              },
                              child: Text(
                                "Да",
                                style: AppTextStyle.nunitoW600S14,
                              ),
                            ),
                            CupertinoDialogAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Отмена",
                                style: AppTextStyle.nunitoW600S14
                                    .copyWith(color: Colors.blue),
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
                    onTap: () async {
                      await context.read<AuthCubit>().signOut();

                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return LoginScreen();
                          },
                        ),
                        (route) => false,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
