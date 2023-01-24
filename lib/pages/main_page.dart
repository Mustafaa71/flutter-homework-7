import 'package:flutter/material.dart';
import 'package:flutter_homework_7/pages/benefit_page.dart';
import 'package:flutter_homework_7/pages/home_page.dart';
import 'package:flutter_homework_7/pages/offers_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    const pages = [HomePage(), BenefitPage(), OffersPage()];
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined),
            label: 'Benefits',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount_outlined),
            label: 'Offers',
          ),
        ],
        onTap: (value) {
          if (value == 0) {
            currentIndex = value;
            setState(() {});
          } else if (value == 1) {
            currentIndex = value;
            setState(() {});
          } else if (value == 2) {
            currentIndex = value;
            setState(() {});
          }
        },
      ),
    );
  }
}
