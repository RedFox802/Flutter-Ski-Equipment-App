import 'package:equipment/components/default_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: DefaultAppBar(titleText: 'Главная страница',),);
  }
}
