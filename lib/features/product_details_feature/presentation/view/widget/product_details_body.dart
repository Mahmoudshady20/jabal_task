import 'package:flutter/material.dart';
import 'package:jabal_task/features/product_details_feature/presentation/view/widget/burger_image_widget.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BurgerImageWidget(),
      ],
    );
  }
}
