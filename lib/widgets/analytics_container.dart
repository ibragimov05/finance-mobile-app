import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnalyticsContainer extends StatelessWidget {
  final String text;
  final bool isSelected;

  const AnalyticsContainer({
    super.key,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7),
      height: 38,
      width: 75,
      decoration: BoxDecoration(
        color: isSelected == true ? Colors.white : Color(0xFF49A078),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          width: 2.5,
          color: isSelected == true ? Color(0xFF49A078) : Colors.white,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w700,
            fontSize: 13,
            color: isSelected == true ? Color(0xFF49A078) : Colors.white,
          ),
        ),
      ),
    );
  }
}
