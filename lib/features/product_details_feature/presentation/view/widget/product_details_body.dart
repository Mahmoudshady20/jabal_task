import 'package:flutter/material.dart';
import 'package:jabal_task/features/home_feature/presentation/views/widgets/order_button.dart';
import 'package:jabal_task/features/product_details_feature/presentation/view/widget/burger_image_widget.dart';
import 'package:jabal_task/features/product_details_feature/presentation/view/widget/descreption_column.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BurgerImageWidget(),
          DescriptionColumn(),
          SizedBox(
            height: 3,
          ),
          Divider(
            color: Color(0xFF707070).withAlpha(60),
            thickness: .5,
          ),
          OrderButton(),
        ],
      ),
    );
  }
}
