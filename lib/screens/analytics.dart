import 'package:finance_mobile_app/widgets/analytics_container.dart';
import 'package:finance_mobile_app/widgets/spendings_type.dart';
import 'package:finance_mobile_app/widgets/transfer_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Analytics extends StatelessWidget {
  List<Map<String, dynamic>> analyticsLs = [
    {
      'text': '24H',
      'isSelected': false,
    },
    {
      'text': 'Week',
      'isSelected': true,
    },
    {
      'text': 'Month',
      'isSelected': false,
    },
    {
      'text': 'Year',
      'isSelected': false,
    },
    {
      'text': 'Two Year',
      'isSelected': false,
    },
    {
      'text': 'Decade',
      'isSelected': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Analytics',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700, fontSize: 22),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 32.h,
                    width: 64.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/download.svg',
                      height: 10.h,
                      width: 10.w,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var each in analyticsLs)
                      AnalyticsContainer(
                        text: each['text'],
                        isSelected: each['isSelected'],
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'Your Expenses',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w800, fontSize: 22),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Image.asset('assets/images/bar.png'),
              SizedBox(
                height: 15.h,
              ),
              const Row(
                children: [
                  SpendingType(
                      color: Color(0xFF49A078),
                      text1: 'Grocery',
                      text2: '\$300'),
                  SpendingType(
                      color: Color(0xFF998FC7),
                      text1: 'Shopping',
                      text2: '\$250'),
                  SpendingType(
                      color: Color(0xFF000000),
                      text1: 'Transfer',
                      text2: '\$150'),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                children: [
                  Text(
                    '10 May, Fri',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 22),
                  ),
                ],
              ),
              TransactionAn(
                  icoPath: 'assets/icons/dollar.svg',
                  name: 'Ahmad Mughal',
                  type: 'Transfer',
                  money: '-\$53.00'),
              TransactionAn(
                  icoPath: 'assets/icons/netflix.svg',
                  name: 'Netflix',
                  type: 'Shopping',
                  money: '- \$45.00'),
              TransactionAn(
                  icoPath: 'assets/icons/food.svg',
                  name: 'Foodpanda',
                  type: 'Food',
                  money: '- \$20.00'),
              TransactionAn(
                  icoPath: 'assets/icons/food.svg',
                  name: 'Restaurant',
                  type: 'Food',
                  money: '- \$82.00'),
            ],
          ),
        ),
      ),
    );
  }
}
