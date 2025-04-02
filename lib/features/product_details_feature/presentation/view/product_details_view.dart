import 'package:flutter/material.dart';
import 'package:jabal_task/features/product_details_feature/presentation/view/widget/product_details_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});
  static const String routeName = 'product_details';

  @override
  Widget build(BuildContext context) {
    return ProductDetailsBody();
  }
}
