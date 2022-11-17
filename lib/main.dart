import 'package:flutter/material.dart';

import 'mainPages/HomePage.dart';
import 'mainPages/NewGoodsPage.dart';
import 'mainPages/CartPage.dart';
import 'mainPages/BrowsePage.dart';
import 'mainPages/AccountPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JD mall',
      home: HomeNavigationPage(0),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class HomeNavigationPage extends StatefulWidget {
  HomeNavigationPage(this.currentIndex);
  int currentIndex;

  @override
  State<HomeNavigationPage> createState() => _HomeNavigationPageState();
}

class _HomeNavigationPageState extends State<HomeNavigationPage> {
  final screens = [
    HomePage(),
    NewGoodsPage(),
    BrowsePage(),
    CartPage(),
    AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: widget.currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black87,
          selectedItemColor: Colors.red[600],
          currentIndex: widget.currentIndex,
          showUnselectedLabels: true,
          onTap: (index) => setState(() {
            widget.currentIndex = index;
          }),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(
                icon: Icon(Icons.square_outlined), label: "新品"),
            BottomNavigationBarItem(icon: Icon(Icons.face), label: "逛"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "购物车"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的"),
          ],
        ));
  }
}
