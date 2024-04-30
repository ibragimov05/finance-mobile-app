import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RowMaker extends StatelessWidget {
  final String icoPath;
  final String text;
  final Color color;

  const RowMaker(
      {super.key,
      required this.icoPath,
      required this.text,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41.h,
      width: 83.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(icoPath),
          Text(
            text,
            style: GoogleFonts.inriaSans(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
