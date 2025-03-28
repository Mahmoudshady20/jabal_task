import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/app_styles.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .35,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xFFE2EDF2),
          )),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xFF5117AC),
          ),
          hintText: 'Buscar',
          hintStyle: GoogleFonts.poppins(
            color: const Color(0xFFE2EDF2),
            fontSize: AppStyles.getResponsiveFontSize(
              context,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
