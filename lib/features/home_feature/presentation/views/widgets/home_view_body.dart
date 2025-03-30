import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/features/home_feature/data/models/product_model.dart';
import 'package:jabal_task/features/home_feature/presentation/views/widgets/category_list_view.dart';
import 'package:jabal_task/features/home_feature/presentation/views/widgets/populares_product.dart';

import '../../../../../core/utils/app_styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          SizedBox(
              height: AppStyles.getResponsiveFontSize(context, fontSize: 120),
              child: CategoryListView()),
          SizedBox(
            height: 30,
          ),
          Text(
            'Productos populares',
            style: GoogleFonts.poppins(
              color: const Color(0xFF153E73),
              fontSize: AppStyles.getResponsiveFontSize(
                context,
                fontSize: 19,
              ),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PopularesProduct(
                  product: ProductModel(
                    name: 'Pizza Clásica',
                    price: 12.58,
                    description: 'Salsa clásica de la casa',
                    image: 'assets/images/pizza.jpg',
                  ),
                ),
                PopularesProduct(
                  product: ProductModel(
                    name: 'Hamburguesa mix',
                    price: 12.58,
                    description: 'Doble carne con queso',
                    image: 'assets/images/burger.jpg',
                    isFavorite: true,
                  ),
                ),
                PopularesProduct(
                  product: ProductModel(
                    name: 'Pizza Clásica',
                    price: 12.58,
                    description: 'Salsa clásica de la casa',
                    image: 'assets/images/pizza.jpg',
                  ),
                ),
                PopularesProduct(
                  product: ProductModel(
                    name: 'Hamburguesa mix',
                    price: 12.58,
                    description: 'Doble carne con queso',
                    image: 'assets/images/burger.jpg',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
