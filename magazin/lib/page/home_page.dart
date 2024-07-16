import 'package:flutter/material.dart';
import 'package:magazin/components/bottom_navigation.dart';
import 'package:magazin/page/cart_page.dart';
import 'package:magazin/page/const.dart';
import 'package:magazin/page/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _page = [
    ShopPage(),
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabchange: (index) => navigateBottomBar(index),
      ),
      body: _page[_selectedindex],
    );
  }
}
