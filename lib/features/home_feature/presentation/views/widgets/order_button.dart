import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/core/utils/app_styles.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 200,
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
                'Ordenar ahora',
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
          Text(
            '\$12.58',
            style: GoogleFonts.poppins(
                color: const Color(0xFF153E73),
                fontSize: AppStyles.getResponsiveFontSize(
                  context,
                  fontSize: 33,
                ),
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
