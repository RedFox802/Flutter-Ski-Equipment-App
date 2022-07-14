import 'package:easy_autocomplete/easy_autocomplete.dart';
import 'package:equipment/components/app_input_borders.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/features/authentication_page/presentation/screens/authentication_screen.dart';
import 'package:equipment/features/login_page/domain/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../components/app_blue_button.dart';
import '../../../../gen/assets.gen.dart';
import '../../domain/login_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<LoginCubit>(
        create: (BuildContext context) => LoginCubit()..loadPhone(),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (BuildContext context, LoginState state) {
            if (state.error) {
              Fluttertoast.showToast(
                  msg: "Ошибка автодополнения!",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.sp);
            }
          },
          builder: (BuildContext context, state) {
            return SizedBox(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned.fill(
                    child: Assets.images.mountains.image(fit: BoxFit.cover),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, 1),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 1.8.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Войти по номеру телефона',
                              style: AppTextStyle.nunitoW700S16,
                            ),
                            SizedBox(height: 30.h),
                            Text(
                              'Телефон',
                              style: AppTextStyle.nunitoW600S14,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 14.h, bottom: 44.h),
                              child: EasyAutocomplete(
                                suggestions: [state.phone],
                                controller: _textEditingController,
                                keyboardType: TextInputType.phone,
                                onChanged: (value) {},
                                onSubmitted: (value) {},
                                inputFormatter: [
                                  MaskTextInputFormatter(
                                      mask: '+7(###)###-##-##',
                                      filter: {'#': RegExp(r'[0-9]')})
                                ],
                                decoration: InputDecoration(
                                  hintText: '+7(',
                                  border: AppInputBorders.telephoneInputBorder,
                                  disabledBorder:
                                      AppInputBorders.telephoneInputBorder,
                                  enabledBorder:
                                      AppInputBorders.telephoneInputBorder,
                                  focusedBorder:
                                      AppInputBorders.telephoneInputBorder,
                                  errorBorder:
                                      AppInputBorders.telephoneErrorInputBorder,
                                  focusedErrorBorder:
                                      AppInputBorders.telephoneErrorInputBorder,
                                  filled: true,
                                  fillColor: Colors.grey.shade50,
                                ),
                              ),
                            ),
                            AppBlueButton(
                              text: 'Получить смс код',
                              onPressed: () async {
                                if (_textEditingController.text !=
                                    state.phone) {
                                  context
                                      .read<LoginCubit>()
                                      .savePhone(_textEditingController.text);
                                }
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((_) => AuthenticationScreen(
                                          phone: _textEditingController.text,
                                        )),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
