import 'package:finance_mobile_app/widgets/cards_displayer.dart';
import 'package:finance_mobile_app/widgets/freeze_deactivate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCard extends StatelessWidget {
  List<Map<String, dynamic>> freeze_deactivate_values = [
    {
      'icoPath': 'assets/icons/snowflake.svg',
      'text': 'Freeze!',
      'sec_icoPath': 'assets/icons/toggle_off.svg'
    },
    {
      'icoPath': 'assets/icons/stop.svg',
      'text': 'Deactivate',
      'sec_icoPath': 'assets/icons/toggle_on.svg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 32.h,
                    width: 32.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.3),
                        width: 1.3.w,
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 18.r,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50.r),
                    child: Text(
                      'Cards',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700, fontSize: 22.sp),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 32.h,
                      width: 81.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 2.r,
                            spreadRadius: 3.r,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/plus.svg'),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Add',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              color: Color(0xFF49A078),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardDisplayer(
                        background: 'assets/images/card.png',
                        cardNum: '8763 2736 9873 0329',
                        cardHolderName: 'Shahzaib',
                        expireDate: '10/28'),
                    SizedBox(
                      width: 30.w,
                    ),
                    CardDisplayer(
                      background: 'assets/images/card2.png',
                      cardNum: '8763 2736 9873 0329',
                      cardHolderName: 'Shahzaib',
                      expireDate: '10/28',
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              FreezeDeactivate(
                icoPath: 'assets/icons/snowflake.svg',
                text: 'Freeze!',
                sec_IcoPath: 'assets/icons/toggle_off.svg',
              ),
              SizedBox(
                height: 15.h,
              ),
              FreezeDeactivate(
                icoPath: 'assets/icons/stop.svg',
                text: 'Deactivate',
                sec_IcoPath: 'assets/icons/toggle_on.svg',
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: 363.w,
                height: 158.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: Color(0xFF4DD1A1),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Monthly Budget',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                          ),
                        ),
                        Text(
                          '\$1,456',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'May 2023 current',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Color(0xFF777777),
                          ),
                        ),
                        Text(
                          '\$560 left',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Color(0xFF777777),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Previous Month',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                          ),
                        ),
                        Text(
                          '\$1,420',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'April 2023',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Color(0xFF777777),
                          ),
                        ),
                        Text(
                          '\$10 left',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Color(0xFF777777),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
