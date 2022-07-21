import 'dart:developer';

import 'package:equipment/components/app_blue_button.dart';
import 'package:equipment/components/app_text_styles.dart';
import 'package:equipment/components/default_app_bar.dart';
import 'package:equipment/features/booking_page/domain/booking_cubit.dart';
import 'package:equipment/features/questionnaire_adding_page/domain/questionnaire_adding_cubit.dart';
import 'package:equipment/features/questionnaire_page/domain/questionnaire_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/appRandom.dart';
import '../../../../components/app_buttons_row.dart';
import '../../../../components/app_text_field.dart';
import '../../../../gen/assets.gen.dart';
import '../../../authentication_page/data/user_id_storage.dart';
import '../../../profile_page/domain/entity/questionnaire/questionnaire_entity.dart';
import '../../domain/state/questionnaire_adding_state.dart';

class QuestionnaireAddingScreen extends StatefulWidget {
  final bool isUpdate;
  final QuestionnaireEntity? entity;

  const QuestionnaireAddingScreen({
    Key? key,
    required this.isUpdate,
    this.entity,
  }) : super(key: key);

  @override
  State<QuestionnaireAddingScreen> createState() =>
      _QuestionnaireAddingScreenState();
}

class _QuestionnaireAddingScreenState extends State<QuestionnaireAddingScreen> {
  bool isNew = false;
  final UserIdStorage _userIdStorage = UserIdStorage();

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = widget.entity == null
        ? TextEditingController()
        : TextEditingController(text: widget.entity!.name);
    final TextEditingController heightController = widget.entity == null
        ? TextEditingController()
        : TextEditingController(text: widget.entity!.height);
    final TextEditingController weightController = widget.entity == null
        ? TextEditingController()
        : TextEditingController(text: widget.entity!.weight);
    final TextEditingController shoesController = widget.entity == null
        ? TextEditingController()
        : TextEditingController(text: widget.entity!.shoeSize);
    return Scaffold(
      appBar: const DefaultAppBar(),
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (BuildContext context) => QuestionnaireAddingCubit(),
        child: BlocConsumer<QuestionnaireAddingCubit, QuestionnaireAddingState>(
          listener: (BuildContext context, state) async {
            if (state.ready) {
              await context.read<BookingCubit>().getQuestionnaires();
              await context.read<QuestionnaireCubit>().getQuestionnaires();
              Navigator.maybePop(context);
            }
          },
          builder: (BuildContext context, Object? state) {
            return SafeArea(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                children: [
                  Text(
                    'Добавление анкеты',
                    style: AppTextStyle.nunitoW700S18,
                  ),
                  SizedBox(height: 10.h),
                  AppButtonsRow(
                    isFirstButton: isNew,
                    firstText: 'Опытный',
                    secondText: 'Новичок',
                    firstOnTap: () {
                      if (!isNew) {
                        setState(() {
                          isNew = !isNew;
                        });
                      }
                    },
                    secondOnTap: () {
                      if (isNew) {
                        setState(() {
                          isNew = !isNew;
                        });
                      }
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: AppTextField(
                      icon: const Icon(Icons.person_outline_outlined, size: 28,),
                      controller: nameController,
                      text: 'Имя',
                      hint: 'Введите ваше имя',
                    ),
                  ),
                  AppTextField(
                    icon: Assets.icons.icHeight.svg(color: Colors.grey.shade700,width: 20.w,height: 20.w,),
                    controller: heightController,
                    text: 'Рост',
                    hint: 'Введите ваш рост',
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: AppTextField(
                      icon: Assets.icons.icScales.svg(color: Colors.grey.shade700,width: 20.w,height: 20.w,),
                      controller: weightController,
                      text: 'Вес',
                      hint: 'Введите ваш вес',
                    ),
                  ),
                  AppTextField(
                    icon: Assets.icons.icShoe.svg(color: Colors.grey.shade700,width: 20.w,height: 20.w,),
                    controller: shoesController,
                    text: 'Размер обуви',
                    hint: 'Введите ваш размер обуви',
                  ),
                  SizedBox(height: 40.h),
                  AppBlueButton(
                    text: 'Сохранить',
                    onPressed: () async {
                      String name = nameController.text;
                      String weight = weightController.text;
                      String height = heightController.text;
                      String shoes = shoesController.text;

                      if (widget.isUpdate) {
                        log('я понял');

                        Map<String, dynamic> newFields = {};
                        if (name != widget.entity!.name) {
                          newFields['name'] = name;
                        }
                        if (weight != widget.entity!.weight) {
                          newFields['weight'] = weight;
                        }
                        if (height != widget.entity!.height) {
                          newFields['height'] = height;
                        }
                        if (shoes != widget.entity!.shoeSize) {
                          newFields['shoeSize'] = shoes;
                        }

                        await context
                            .read<QuestionnaireAddingCubit>()
                            .updateQuestionnaire(widget.entity!.id, newFields);
                      } else {
                        await context
                            .read<QuestionnaireAddingCubit>()
                            .addQuestionnaire(
                              QuestionnaireEntity(
                                  id: AppRandom.createId(),
                                  userId: await _userIdStorage.loadUserId(),
                                  name: name,
                                  weight: weight,
                                  height: height,
                                  shoeSize: shoes),
                            );
                      }
                    },
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
