import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDisplayer extends StatelessWidget {
  final String background;
  final String cardNum;
  final String cardHolderName;
  final String expireDate;

  const CardDisplayer({
    super.key,
    required this.background,
    required this.cardNum,
    required this.cardHolderName,
    required this.expireDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 218,
      width: 343,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        // color: Colors.yellow,
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(background),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                background == 'assets/images/card2.png'
                    ? ''
                    : 'Allied Supreme Bank',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35.h,
          ),
          Text(
            cardNum,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 35.h,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Holder Name',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    cardHolderName,
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 50.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Expired Date',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    expireDate,
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
