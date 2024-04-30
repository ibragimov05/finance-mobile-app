import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SpendingType extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;

  const SpendingType({
    super.key,
    required this.color,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 6),
      width: 118.w,
      height: 37.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 11,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text2,
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
