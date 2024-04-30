import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentTransaction extends StatelessWidget {
  final Color color;
  final String receiverOrSenderName;
  final String transactionDate;
  final String transactionAmount;
  final bool isSelected;

  RecentTransaction({
    super.key,
    required this.color,
    required this.receiverOrSenderName,
    required this.transactionDate,
    required this.transactionAmount,
    required this.isSelected,
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
                color: color,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: SvgPicture.asset(
                isSelected == true
                    ? 'assets/icons/vector_down.svg'
                    : 'assets/icons/vector_up.svg',
                width: 14.w,
                height: 14.h,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              height: 50.h,
              width: 220.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    receiverOrSenderName,
                    style: GoogleFonts.inriaSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                    ),
                  ),
                  Text(
                    transactionDate,
                    style: GoogleFonts.inriaSans(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFAAAAAA),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  transactionAmount,
                  style: GoogleFonts.inriaSans(
                      fontWeight: FontWeight.w700, fontSize: 18.sp),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
