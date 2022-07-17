import 'package:equipment/features/authentication_page/domain/auth_cubit.dart';
import 'package:equipment/features/authentication_page/domain/state/auth_state.dart';
import 'package:equipment/features/home_page/presentation/screens/home_screen.dart';
import 'package:equipment/features/login_page/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../components/app_text_styles.dart';
import '../../../../components/default_app_bar.dart';

class AuthenticationScreen extends StatelessWidget {
  final String phone;

  const AuthenticationScreen({
    Key? key,
    required this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<AuthCubit>().verifyPhone(phone);

    return BlocConsumer<AuthCubit, AuthState>(
      listener: (BuildContext context, state) {
        if (state.auth) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const HomeScreen()),
            (_) => false,
          );
        }
        if (state.error) {
          Fluttertoast.showToast(
              msg: "Ошибка авторизации",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.sp);

          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const LoginScreen()),
            (_) => false,
          );
        }
      },
      builder: (BuildContext context, AuthState state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: const DefaultAppBar(
            titleText: 'Подтверждение номера',
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'На номер $phone\nбыл отправилен СМС-код,\nвведите его ниже',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.nunitoW600S16,
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: PinCodeTextField(
                    pinTheme: PinTheme(
                      inactiveColor: Colors.grey,
                      shape: PinCodeFieldShape.underline,
                      fieldWidth: 30.w,
                    ),
                    pastedTextStyle: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                    onCompleted: (String text) {
                      if (!state.auth) {
                        context.read<AuthCubit>().sighIn(text);
                      }
                    },
                    length: 6,
                    obscureText: false,
                    appContext: context,
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.number,
                    onChanged: (String value) {},
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
