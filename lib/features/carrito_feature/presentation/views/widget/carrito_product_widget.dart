import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/core/utils/app_styles.dart';
import 'package:jabal_task/features/carrito_feature/data/carrito_model.dart';
import 'package:jabal_task/features/carrito_feature/presentation/views/widget/price_widget.dart';

class CarritoProductWidget extends StatelessWidget {
  final CarritoModel carritoModel;
  const CarritoProductWidget({
    super.key,
    required this.carritoModel,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Container(
              width: 250,
              height: 310,
              padding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xFF707070)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 5,
                children: [
                  Image.asset(
                    carritoModel.image,
                  ),
                  Text(
                    carritoModel.name,
                    style: GoogleFonts.poppins(
                      color: Color(0xFF153E73),
                      fontSize: AppStyles.getResponsiveFontSize(
                        context,
                        fontSize: 22,
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    carritoModel.desc,
                    style: GoogleFonts.poppins(
                      color: Color(0xFF66667E),
                      fontSize: AppStyles.getResponsiveFontSize(
                        context,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  PriceWidget()
                ],
              ),
            ),
            SizedBox(
              width: 20,
              height: 340,
            )
          ],
        ),
        Positioned(
            top: 10,
            right: 10,
            child: CircleAvatar(
              backgroundColor: Color(0xFFF1395E),
              radius: 20,
              child: FaIcon(
                FontAwesomeIcons.trash,
                color: Colors.white,
              ),
            )),
      ],
    );
  }
}
