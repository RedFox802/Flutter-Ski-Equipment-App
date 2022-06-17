import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              'На номер ${phone}\nбыл отправилен СМС-код,\nвведите его ниже',
              textAlign: TextAlign.center,
              style: AppTextStyle.nunitoW600S16.copyWith(color: Colors.grey.shade800),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.w),
              child: PinCodeTextField(
                appContext: context,
                pastedTextStyle: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
                length: 4,
                blinkWhenObscuring: true,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  inactiveColor: Colors.grey,
                  shape: PinCodeFieldShape.underline,
                  fieldHeight: 50,
                  fieldWidth: 40,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                onChanged: (String value) {},
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 50.h,
              child: ElevatedButton(
                onPressed: () async {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey.shade50),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.r),
                      ),
                    ),
                  ),
                ),
                child: Text(
                  "Продолжить",
                  style: AppTextStyle.nunitoW600S16.copyWith(color: Colors.grey.shade600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
