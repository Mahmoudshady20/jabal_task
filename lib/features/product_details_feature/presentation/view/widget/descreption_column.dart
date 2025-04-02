import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/features/product_details_feature/presentation/view/widget/image_list_view.dart';

import '../../../../../core/utils/app_styles.dart';

class DescriptionColumn extends StatelessWidget {
  const DescriptionColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
            child: Text(
              'Descripción',
              style: GoogleFonts.poppins(
                color: const Color(0xFF153E73),
                fontSize: AppStyles.getResponsiveFontSize(
                  context,
                  fontSize: 21,
                ),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur',
            style: GoogleFonts.poppins(
              color: const Color(0xFF153E73),
              fontSize: AppStyles.getResponsiveFontSize(
                context,
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ingredientes',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF153E73),
                    fontSize: AppStyles.getResponsiveFontSize(
                      context,
                      fontSize: 19,
                    ),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '10 ingredientes',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFFCFCFCF),
                    fontSize: AppStyles.getResponsiveFontSize(
                      context,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppStyles.getResponsiveFontSize(context, fontSize: 230),
            child: ImageListView(),
          ),
        ],
      ),
    );
  }
}
