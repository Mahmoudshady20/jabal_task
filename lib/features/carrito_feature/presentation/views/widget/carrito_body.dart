import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jabal_task/features/carrito_feature/data/carrito_model.dart';
import 'package:jabal_task/features/carrito_feature/presentation/views/widget/carrito_product_widget.dart';
import 'package:jabal_task/features/carrito_feature/presentation/views/widget/choose_widget.dart';

class CarritoBody extends StatelessWidget {
  const CarritoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ChooseWidget(),
              ChooseWidget(),
              CircleAvatar(
                radius: 28,
                backgroundColor: Color(0xFF5117AC),
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.plus,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CarritoProductWidget(
                  carritoModel: CarritoModel(
                    name: 'Big Burger Queso',
                    image: 'assets/images/burger2.png',
                    desc:
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius esse et harum inventore ipsam  nam necessitatibus nemo pariatur provident.',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CarritoProductWidget(
                    carritoModel: CarritoModel(
                  name: 'Big Burger Queso',
                  image: 'assets/images/burger3.png',
                  desc:
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius esse et harum inventore ipsam  nam necessitatibus nemo pariatur provident.',
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
