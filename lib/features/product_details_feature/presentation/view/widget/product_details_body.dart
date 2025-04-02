import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jabal_task/features/home_feature/presentation/views/widgets/order_button.dart';
import 'package:jabal_task/features/product_details_feature/presentation/view/widget/burger_image_widget.dart';
import 'package:jabal_task/features/product_details_feature/presentation/view/widget/descreption_column.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
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
          Positioned(
              top: MediaQuery.sizeOf(context).height * .385,
              right: MediaQuery.sizeOf(context).width * .17,
              child: CircleAvatar(
                backgroundColor: Color(0xFFF1395E),
                radius: 25,
                child: FaIcon(
                  FontAwesomeIcons.heart,
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}
