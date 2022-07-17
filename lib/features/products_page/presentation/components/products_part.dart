import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'big_product_container.dart';

class ProductsPart extends StatelessWidget {
  const ProductsPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          for (int i = 0; i < 10; i++) const BigProductContainer(),
        ],
      ),
    );
  }
}
