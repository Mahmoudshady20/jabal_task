import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/features/home_feature/presentation/views/widgets/category_list_view.dart';

import '../../../../../core/utils/app_styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explorar categorias',
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
                'Ver todos',
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
        Expanded(child: CategoryListView()),
      ],
    );
  }
}
