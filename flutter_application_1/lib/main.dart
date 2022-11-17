import 'package:flutter/material.dart';
import 'Button/BottomBarIcon.dart';

import 'pages/home.dart';
import 'pages/promotion.dart';
import 'pages/chat.dart';
import 'pages/person.dart';

// import 'Button/BottomBarIcon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去掉debug图标
      title: '拼多多',
      home: HomeNavigationPage(0),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class HomeNavigationPage extends StatefulWidget {
  HomeNavigationPage(this.currentIndex);
  int currentIndex;

  @override
  State<HomeNavigationPage> createState() => _HomeNavigationpagestate();
}

class _HomeNavigationpagestate extends State<HomeNavigationPage>
    with SingleTickerProviderStateMixin {
  final screens = [
    const Home(),
    const Promotion(),
    const Chat(),
    const Person(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: widget.currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //item > 3时必须要设置,不然未选中项字体颜色变白
        backgroundColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 179, 178, 177),
        selectedItemColor: Colors.red[600],
        currentIndex: widget.currentIndex,
        onTap: (index) => setState(() {
          widget.currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "分类"),
          BottomNavigationBarItem(icon: Icon(BottomBarIcon.chat), label: "聊天"),
          BottomNavigationBarItem(icon: Icon(BottomBarIcon.person), label: "个人中心"),
        ],
      ),
    );
  }
}


// items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "首页"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.live_tv_sharp), label: "多多视频"),
//           BottomNavigationBarItem(
//               icon: Icon(BottomBarIcon.promotion), label: "年度大促"),
//           BottomNavigationBarItem(icon: Icon(BottomBarIcon.chat), label: "聊天"),
//           BottomNavigationBarItem(
//               icon: Icon(BottomBarIcon.person), label: "个人中心"),
//         ],