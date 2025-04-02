import 'package:flutter/material.dart';
import 'package:jabal_task/features/product_details_feature/presentation/view/widget/burger_image_widget.dart';
import 'package:jabal_task/features/product_details_feature/presentation/view/widget/descreption_column.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BurgerImageWidget(),
        DescriptionColumn(),
      ],
    );
  }
}
