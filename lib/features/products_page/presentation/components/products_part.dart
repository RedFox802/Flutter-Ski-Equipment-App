import 'package:equipment/features/catalog_page/domain/entity/products/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../catalog_page/domain/entity/rental/rental_entity.dart';
import 'big_product_container.dart';

class ProductsPart extends StatelessWidget {
  final RentalEntity rentalEntity;
  final List<ProductEntity> products;

  const ProductsPart({
    Key? key,
    required this.rentalEntity,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          for (int i = 0; i < products.length; i++)
            BigProductContainer(
              rentalEntity: rentalEntity,
              product: products[i],
            ),
        ],
      ),
    );
  }
}
