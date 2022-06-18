import 'package:equipment/components/app_input_borders.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/features/authentication_page/presentation/screens/authentication_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../gen/assets.gen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBuilder(
        key: _formKey,
        child: SizedBox(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: Assets.images.mountains.image(fit: BoxFit.cover),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 1),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
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
                          padding: EdgeInsets.only(top: 14.h, bottom: 26.h),
                          child: FormBuilderTextField(
                            name: 'phone_field',
                            keyboardType: TextInputType.phone,
                            inputFormatters: [
                              MaskTextInputFormatter(
                                  mask: '+7(###)###-##-##',
                                  filter: {'#': RegExp(r'[0-9]')})
                            ],
                            decoration: InputDecoration(
                              hintText: '+7(',
                              border: AppInputBorders.telephoneInputBorder,
                              disabledBorder: AppInputBorders.telephoneInputBorder,
                              enabledBorder: AppInputBorders.telephoneInputBorder,
                              focusedBorder: AppInputBorders.telephoneInputBorder,
                              errorBorder: AppInputBorders.telephoneErrorInputBorder,
                              focusedErrorBorder: AppInputBorders.telephoneErrorInputBorder,
                              filled: true,
                              fillColor: Colors.grey.shade50,
                            ),
                            validator: FormBuilderValidators.compose(
                              [
                                FormBuilderValidators.required(
                                    errorText: 'Это обязательное поле'),
                                FormBuilderValidators.minLength(11,
                                    errorText: 'Не достаточно символов')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                          child: ElevatedButton(
                            onPressed: () async {
                              if (_formKey.currentState?.validate() ?? false) {
                                _formKey.currentState!.save();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((_) => AuthenticationScreen(
                                          phone: _formKey.currentState!
                                              .value['phone_field'],
                                        )),
                                  ),
                                );
                              }
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.blue.shade300),
                              elevation: MaterialStateProperty.all<double>(10),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.r),
                                  ),
                                ),
                              ),
                            ),
                            child: Text(
                              "Получить смс код",
                              style: AppTextStyle.nunitoW600S16
                                  .copyWith(color: Colors.grey.shade800),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
