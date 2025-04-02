import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/features/carrito_feature/presentation/views/widget/carrito_body.dart';

import '../../../../core/utils/app_styles.dart';

class CarritoView extends StatelessWidget {
  const CarritoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Carrito',
          style: GoogleFonts.poppins(
            color: const Color(0xFF5117AC),
            fontSize: AppStyles.getResponsiveFontSize(
              context,
              fontSize: 22,
            ),
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: CarritoBody(),
    );
  }
}
