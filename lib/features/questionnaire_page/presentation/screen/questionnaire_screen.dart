import 'package:equipment/components/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/default_app_bar.dart';
import '../../../questionnaire_adding_page/presentation/screens/questionnaire_adding_screen.dart';
import '../components/questionnaire_container.dart';

class QuestionnaireScreen extends StatelessWidget {
  const QuestionnaireScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        centreTitle: false,
        action: IconButton(
          icon: Icon(
            Icons.add,
            color: Colors.blueAccent,
            size: 26.h,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((_) => const QuestionnaireAddingScreen()),
              ),
            );
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 8.h),
            child: Text('Мои анкеты',style: AppTextStyle.nunitoW700S18,),
          ),
          Expanded(
            child: ListView(
              children: [
                for (int i = 0; i < 20; i++) const QuestionnaireContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
