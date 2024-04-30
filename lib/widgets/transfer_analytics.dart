import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionAn extends StatelessWidget {
  final String icoPath;
  final String name;
  final String type;
  final String money;

  TransactionAn({
    super.key,
    required this.icoPath,
    required this.name,
    required this.type,
    required this.money,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.h,
              width: 50.w,
              padding: EdgeInsets.all(18.r),
              decoration: BoxDecoration(
                color: Color(0xFFDBDBDB),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: SvgPicture.asset(icoPath, height: 30,width: 30,),
            ),
            Container(
              // padding: EdgeInsets.only(left: 1),
              height: 35.h,
              width: 220.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w800, fontSize: 11),
                  ),
                  Text(
                    type,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                        color: Color(0xFFB3B3B3)),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  money,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w800, fontSize: 11),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
