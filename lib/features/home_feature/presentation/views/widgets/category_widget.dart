import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/core/utils/app_styles.dart';
import 'package:jabal_task/features/home_feature/data/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: Column(
        spacing: 3,
        children: [
          Container(
            width: AppStyles.getResponsiveFontSize(context, fontSize: 72),
            height: AppStyles.getResponsiveFontSize(context, fontSize: 72),
            decoration: BoxDecoration(
              color: categoryModel.color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: SvgPicture.asset(
                categoryModel.image,
              ),
            ),
          ),
          Text(
            categoryModel.name,
            style: GoogleFonts.poppins(
              color: const Color(0xFF153E73),
              fontSize: AppStyles.getResponsiveFontSize(
                context,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
