import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/core/utils/app_styles.dart';
import 'package:jabal_task/features/carrito_feature/data/carrito_model.dart';
import 'package:jabal_task/features/carrito_feature/presentation/views/widget/carrito_product_widget.dart';
import 'package:jabal_task/features/carrito_feature/presentation/views/widget/choose_widget.dart';
import 'package:jabal_task/features/carrito_feature/presentation/views/widget/custom_text_widget.dart';

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
                )),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFF9F9F9),
            ),
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextWidget(
                  text1: 'SubTotal:',
                  text2: '\$85.00 usd',
                ),
                CustomTextWidget(
                  text1: 'Envio:',
                  text2: 'Gratis',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total:',
                        style: GoogleFonts.poppins(
                          fontSize: AppStyles.getResponsiveFontSize(
                            context,
                            fontSize: 20,
                          ),
                          color: Color(
                            0xFF5117AC,
                          ),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '\$85.00 usd',
                        style: GoogleFonts.poppins(
                          fontSize: AppStyles.getResponsiveFontSize(
                            context,
                            fontSize: 20,
                          ),
                          color: Color(
                            0xFF5117AC,
                          ),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF4A1192),
                        Color(0xFF2CD5C4),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Realizar compra',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: AppStyles.getResponsiveFontSize(
                          context,
                          fontSize: 21,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
