import '/util/my_tab.dart';
import 'package:flutter/material.dart';
import 'package:JDMall/util/my_appbar.dart';

import '../tab/burger_tab.dart';
import '../tab/main_content_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // my tabs
  List<Widget> myTabs = const [
    // donut tab
    MyTab(
      tabName: '推荐',
    ),

    // burger tab
    MyTab(
      tabName: '生活旅行',
    ),

    // smoothie tab
    MyTab(
      tabName: '食品',
    ),

    // pancake tab
    MyTab(
      tabName: '运动',
    ),

    // pizza tab
    MyTab(
      tabName: '生鲜',
    ),

    MyTab(
      tabName: '生鲜',
    ),

    MyTab(
      tabName: '工业品',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        body: Column(
          children: [
            // app bar
            const CustomAppBar(
                icon1: Icons.paragliding,
                icon2: Icons.redeem_outlined,
                icon3: Icons.sms_outlined),

            // search bar
            const CustomSearchBar(),

            Stack(children: [
              Padding(
                  padding: const EdgeInsets.only(right: 68),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red[50],
                    ),
                    child: TabBar(
                        isScrollable: true,
                        indicatorColor: Colors.red[800],
                        unselectedLabelColor: Colors.black87,
                        indicatorWeight: 2.0,
                        labelStyle: TextStyle(
                            fontSize: 16.0,
                            color: Colors.red[800],
                            fontWeight: FontWeight.bold),
                        unselectedLabelStyle: TextStyle(fontSize: 14),
                        tabs: myTabs),
                  )),
              Positioned(
                top: -10,
                right: 0,
                child: Container(
                    decoration: BoxDecoration(color: Colors.red[50]),
                    child: TextButton.icon(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 18,
                      ),
                      label: const Text("分类",
                          style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        print('666');
                      },
                    )),
              )
            ]),
            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // donut page
                  MainContent(),

                  // burger page
                  BurgerTab(),

                  // smoothie page
                  SmoothieTab(),

                  // pancake page
                  PancakeTab(),

                  // pizza page
                  PizzaTab(),

                  BurgerTab(),

                  // smoothie page
                  SmoothieTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
