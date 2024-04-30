import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FreezeDeactivate extends StatelessWidget {
  final String icoPath;
  final String text;
  final String sec_IcoPath;

  FreezeDeactivate({
    super.key,
    required this.icoPath,
    required this.text,
    required this.sec_IcoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 363.w,
      height: 98.h,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.r),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF000000),
            Color(0xFF545454),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(icoPath),
          Container(
            // color: Colors.purple,
            width: 170.w,
            child: Text(
              text,
              style: GoogleFonts.inriaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 22.sp,
                  color: Colors.white),
            ),
          ),
          SvgPicture.asset(sec_IcoPath)
        ],
      ),
    );
  }
}
