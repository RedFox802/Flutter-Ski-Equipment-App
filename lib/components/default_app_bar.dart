import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_text_styles.dart';

class DefaultAppBar extends StatelessWidget with PreferredSizeWidget {
  final bool centreTitle;
  final String? titleText;
  final Widget action;
  final Color? backgroundColor;
  final bool leading;

  @override
  final Size preferredSize = const Size.fromHeight(60);

  const DefaultAppBar({
    Key? key,
    this.titleText,
    this.backgroundColor,
    this.action = const SizedBox.shrink(),
    this.leading = true,
    this.centreTitle = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool canPop = ModalRoute.of(context)?.canPop ?? false;

    return PreferredSize(
      preferredSize: Size.fromHeight(120.h),
      child: AppBar(
        elevation: 0,
        title: Text(
          titleText ?? '',
          style: AppTextStyle.nunitoW700S18,
        ),
        centerTitle: centreTitle,
        leading: canPop && leading
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ),
              )
            : const SizedBox.shrink(),
        backgroundColor: backgroundColor ?? Colors.white,
        actions: [action],
      ),
    );
  }
}
