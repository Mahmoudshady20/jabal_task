import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabal_task/core/utils/app_styles.dart';

class PriceWidget extends StatefulWidget {
  const PriceWidget({super.key});

  @override
  State<PriceWidget> createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  int number = 2;
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Spacer(),
        InkWell(
          radius: 10,
          onTap: () {
            if (number == 1) {
              return;
            } else {
              number--;
            }
            setState(() {});
          },
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: FaIcon(
                FontAwesomeIcons.minus,
                color: Color(0xFF5117AC),
                size: 15,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          number.toString(),
          style: GoogleFonts.poppins(
            color: Color(0xFF5117AC),
            fontSize: AppStyles.getResponsiveFontSize(
              context,
              fontSize: 22,
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        InkWell(
          radius: 10,
          onTap: () {
            setState(() {
              number++;
            });
          },
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: Color(0xFF5117AC),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: FaIcon(
              FontAwesomeIcons.plus,
              color: Colors.white,
              size: 15,
            )),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          '\$20',
          style: GoogleFonts.poppins(
            color: Color(0xFF20D0C4),
            fontSize: AppStyles.getResponsiveFontSize(
              context,
              fontSize: 28,
            ),
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
