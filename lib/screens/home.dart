import 'package:finance_mobile_app/widgets/recent_transactions.dart';
import 'package:finance_mobile_app/widgets/row_maker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  List<Map<String, dynamic>> rowMaker_ls = [
    {
      'icoPath': 'assets/icons/send.svg',
      'text': 'Send',
      'color': Color(0xFF49A078),
    },
    {
      'icoPath': 'assets/icons/receive.svg',
      'text': 'Receive',
      'color': const Color(0xFF94D1BE),
    },
    {
      'icoPath': 'assets/icons/swap.svg',
      'text': 'Swap',
      'color': Color(0xFF998FC7),
    },
    {
      'icoPath': 'assets/icons/deposit.svg',
      'text': 'Deposit',
      'color': Color(0xFF000000),
    },
  ];

  List<Map<String, dynamic>> recentTransActions = [
    {
      'color': Color(0xFF94D1BE),
      'receiverOrSenderName': 'From Ahmad Mughal',
      'transactionDate': '20 Jan 2024 at 10:00 PM',
      'transactionAmount': '+\$3,456.00',
      'isSelected': true,
    },
    {
      'color': Color(0xFF49A078),
      'receiverOrSenderName': 'To Sara Gujjar',
      'transactionDate': '20 Jan 2024 at 10:00 PM',
      'transactionAmount': '-\$1,396.00',
      'isSelected': false,
    },
    {
      'color': Color(0xFF998FC7),
      'receiverOrSenderName': 'To Mailchimp',
      'transactionDate': '20 Jan 2024 at 10:00 PM',
      'transactionAmount': '-\$5000.00',
      'isSelected': false,
    },
    {
      'color': Color(0xFF49A078),
      'receiverOrSenderName': 'From John Doe',
      'transactionDate': '20 Jan 2024 at 10:00 PM',
      'transactionAmount': '+\$1512.00',
      'isSelected': true,
    },
    {
      'color': Color(0xFF94D1BE),
      'receiverOrSenderName': 'To Lorem Ipsum',
      'transactionDate': '20 Jan 2024 at 10:00 PM',
      'transactionAmount': '-\$2000.00',
      'isSelected': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.r),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SHAHZAIB',
                style: GoogleFonts.inriaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 22.sp,
                ),
              ),
              Text(
                'Good Morning',
                style: GoogleFonts.inriaSans(
                  color: Color(0xFF717171),
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          leading: Row(
            children: [
              Container(
                height: 50.h,
                width: 50.w,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  shape: BoxShape.circle,
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  'assets/images/appBar_person.png',
                ),
              ),
            ],
          ),
          actions: [
            Container(
              height: 25.h,
              width: 25.w,
              child: SvgPicture.asset(
                'assets/icons/notification.svg',
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Center(
                child: Container(
                  height: 200.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff49A078).withOpacity(0.7),
                        blurRadius: 23.r,
                        spreadRadius: 3.r,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Your Total Balance',
                        style: GoogleFonts.inriaSans(
                          color: Color(0xff696969),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '\$7,899.00',
                        style: GoogleFonts.inriaSans(
                          color: Color(0xff49A078),
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hide',
                            style: GoogleFonts.inriaSans(
                                color: Color(0xff696969),
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          SvgPicture.asset(
                            'assets/icons/hide.svg',
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var each in rowMaker_ls)
                    RowMaker(
                      icoPath: each['icoPath'],
                      text: each['text'],
                      color: each['color'],
                    ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Recent Transaction',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w800,
                      fontSize: 22.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              for (var each in recentTransActions)
                RecentTransaction(
                  color: each['color'],
                  receiverOrSenderName: each['receiverOrSenderName'],
                  transactionDate: each['transactionDate'],
                  transactionAmount: each['transactionAmount'],
                  isSelected: each['isSelected'],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
