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
        titleText: 'Мои анкеты',
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
      body: ListView(
        children: [
          for (int i = 0; i < 20; i++) const QuestionnaireContainer(),
        ],
      ),
    );
  }
}
