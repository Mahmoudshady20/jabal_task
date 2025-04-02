import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/core/utils/app_styles.dart';

class ChooseWidget extends StatefulWidget {
  const ChooseWidget({super.key});

  @override
  State<ChooseWidget> createState() => _ChooseWidgetState();
}

class _ChooseWidgetState extends State<ChooseWidget> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 20,
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
      },
      child: Container(
        width: 150,
        height: 65,
        decoration: BoxDecoration(
            color: isActive ? const Color(0xFF5117AC) : Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: isActive ? Colors.transparent : Color(0xFFE2EDF2),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(isActive
                ? 'assets/images/house_white.svg'
                : 'assets/images/house_color.svg'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Mi casa',
                  style: GoogleFonts.poppins(
                    color: isActive ? Colors.white : Color(0xFF383838),
                    fontSize: AppStyles.getResponsiveFontSize(
                      context,
                      fontSize: 14,
                    ),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Direción de ejemplo',
                  style: GoogleFonts.poppins(
                    color: isActive ? Colors.white : Color(0xFFCFCFCF),
                    fontSize: AppStyles.getResponsiveFontSize(
                      context,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
