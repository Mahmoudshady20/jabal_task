import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/core/utils/app_styles.dart';
import 'package:jabal_task/features/home_feature/presentation/views/widgets/search_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: SvgPicture.asset(
              'assets/images/notification.svg',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: SvgPicture.asset(
              'assets/images/leading2.svg',
            ),
          ),
        ),
      ],
      title: Row(
        children: [
          const SearchWidget(),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .1,
          ),
          Center(
            child: Text(
              'Inicio',
              style: GoogleFonts.poppins(
                color: const Color(0xFF5117AC),
                fontSize: AppStyles.getResponsiveFontSize(
                  context,
                  fontSize: 22,
                ),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
