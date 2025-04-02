import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/core/utils/app_styles.dart';
import 'package:jabal_task/features/product_details_feature/data/image_model.dart';

class ImageWidget extends StatelessWidget {
  final ImageModel imageModel;
  const ImageWidget({super.key, required this.imageModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(imageModel.image),
        ),
        Text(
          imageModel.title,
          style: GoogleFonts.poppins(
            color: const Color(0xFFCFCFCF),
            fontSize: AppStyles.getResponsiveFontSize(
              context,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
