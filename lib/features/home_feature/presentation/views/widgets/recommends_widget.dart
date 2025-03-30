import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/features/home_feature/data/models/product_model.dart';

import '../../../../../core/utils/app_styles.dart';

class RecommendsProduct extends StatefulWidget {
  const RecommendsProduct({
    super.key,
    required this.product,
  });
  final ProductModel product;

  @override
  State<RecommendsProduct> createState() => _RecommendsProductState();
}

class _RecommendsProductState extends State<RecommendsProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 10),
      width: MediaQuery.sizeOf(context).width * .55,
      height: MediaQuery.sizeOf(context).height * .15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF707070)),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          widget.product.image.isNotEmpty
              ? SvgPicture.asset(widget.product.image, fit: BoxFit.scaleDown)
              : const Icon(Icons.image_not_supported),
          Column(
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Fix Spacer issue
                children: [
                  const SizedBox(width: 50), // Add spacing if needed
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.product.isFavorite = !widget.product.isFavorite;
                      });
                    },
                    child: FaIcon(
                      widget.product.isFavorite
                          ? FontAwesomeIcons.solidHeart
                          : FontAwesomeIcons.heart,
                      color:
                          widget.product.isFavorite ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              ),
              Text(
                'Pizza Clásica',
                style: GoogleFonts.poppins(
                  color: const Color(0xFF515F65),
                  fontSize:
                      AppStyles.getResponsiveFontSize(context, fontSize: 15),
                ),
              ),
              Text(
                'Salsa clásica de la casa',
                style: GoogleFonts.poppins(
                  color: const Color(0xFF515F65),
                  fontSize:
                      AppStyles.getResponsiveFontSize(context, fontSize: 9),
                ),
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Fix Spacer issue
                children: [
                  Text(
                    '\$${widget.product.price}',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF153E73),
                      fontSize: AppStyles.getResponsiveFontSize(context,
                          fontSize: 17),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius:
                        AppStyles.getResponsiveFontSize(context, fontSize: 20),
                    child: const FaIcon(
                      FontAwesomeIcons.arrowRight,
                      color: Color(0xFF153E73),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
