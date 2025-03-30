import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/features/home_feature/data/models/product_model.dart';

import '../../../../../core/utils/app_styles.dart';

class PopularesProduct extends StatefulWidget {
  const PopularesProduct({
    super.key,
    required this.product,
  });
  final ProductModel product;

  @override
  State<PopularesProduct> createState() => _PopularesProductState();
}

class _PopularesProductState extends State<PopularesProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(
        right: 10,
      ),
      width: MediaQuery.sizeOf(context).width * .42,
      height: MediaQuery.sizeOf(context).height * .31,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF707070)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              InkWell(
                onTap: () {
                  widget.product.isFavorite = !widget.product.isFavorite;
                  setState(() {});
                },
                child: FaIcon(
                  widget.product.isFavorite
                      ? FontAwesomeIcons.solidHeart
                      : FontAwesomeIcons.heart,
                  color: widget.product.isFavorite ? Colors.red : Colors.grey,
                ),
              ),
            ],
          ),
          Image.asset(
            widget.product.image,
            fit: BoxFit.scaleDown,
          ),
          Text(
            'Pizza Clásica',
            style: GoogleFonts.poppins(
              color: const Color(0xFF515F65),
              fontSize: AppStyles.getResponsiveFontSize(
                context,
                fontSize: 15,
              ),
            ),
          ),
          Text(
            'Salsa clásica de la casa',
            style: GoogleFonts.poppins(
              color: const Color(0xFF515F65),
              fontSize: AppStyles.getResponsiveFontSize(
                context,
                fontSize: 9,
              ),
            ),
          ),
          Row(
            children: [
              Text(
                '\$${widget.product.price}',
                style: GoogleFonts.poppins(
                  color: const Color(0xFF153E73),
                  fontSize: AppStyles.getResponsiveFontSize(
                    context,
                    fontSize: 17,
                  ),
                ),
              ),
              Spacer(),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: AppStyles.getResponsiveFontSize(
                  context,
                  fontSize: 20,
                ),
                child: FaIcon(
                  FontAwesomeIcons.arrowRight,
                  color: Color(0xFF153E73),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
