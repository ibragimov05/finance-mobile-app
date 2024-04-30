import 'package:finance_mobile_app/screens/add_card.dart';
import 'package:finance_mobile_app/screens/analytics.dart';
import 'package:finance_mobile_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MainPage(),
          );
        });
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _pageIndex = 0;

  final List<Widget> pages = [
    Home(),
    AddCard(),
    Analytics(),
  ];

  changePage(index) => setState(() => _pageIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_pageIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.r),
        ),
        child: NavigationBar(
          backgroundColor: Colors.white,
          indicatorColor: Color(0xFF62c497),
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset('assets/icons/home.svg'),
              label: '',
            ),
            NavigationDestination(
              icon: SvgPicture.asset('assets/icons/refund.svg'),
              label: '',
            ),
            NavigationDestination(
              icon: SvgPicture.asset('assets/icons/bar_chart.svg'),
              label: '',
            ),
          ],
          onDestinationSelected: changePage,
          selectedIndex: _pageIndex,
        ),
      ),
    );
  }
}
