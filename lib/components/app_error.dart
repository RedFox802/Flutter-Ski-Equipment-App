import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import 'app_text_styles.dart';

class AppError{

  static void showError(String text,BuildContext context){
    showToast(
      text,
      context: context,
      textStyle: AppTextStyle.nunitoW600S14.copyWith(color: Colors.white),
      backgroundColor: Colors.red.shade700,
      animation: StyledToastAnimation.fade,
      reverseAnimation: StyledToastAnimation.fade,
      position: StyledToastPosition.center,
      duration: const Duration(seconds: 3),
      curve: Curves.elasticOut,
      reverseCurve: Curves.linear,
    );
  }
}