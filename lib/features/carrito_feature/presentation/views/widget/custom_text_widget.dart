import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/core/utils/app_styles.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: GoogleFonts.poppins(
                fontSize: AppStyles.getResponsiveFontSize(
                  context,
                  fontSize: 14,
                ),
                color: Color(
                  0xFF153E73,
                )),
          ),
          Text(
            text2,
            style: GoogleFonts.poppins(
                fontSize: AppStyles.getResponsiveFontSize(
                  context,
                  fontSize: 14,
                ),
                color: Color(
                  0xFF153E73,
                )),
          )
        ],
      ),
    );
  }
}
