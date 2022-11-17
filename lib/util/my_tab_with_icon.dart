import 'package:flutter/material.dart';

import 'package:JDMall/util/donut_tile.dart';
import 'package:JDMall/mock/data.dart';
import 'package:JDMall/util/smooth_page_indicator.dart';

class CenterTab extends StatelessWidget {
  // 应用列表1
  // List appList1 = TOOLS_LIST1;
  // 应用列表2
  // List appList2 = TOOLS_LIST2;

  final controller = PageController(viewportFraction: 1, keepPage: true);

  final pages = [
    ApplicationGrid(appList: TOOLS_LIST1),
    ApplicationGrid(appList: TOOLS_LIST2),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 1),
          SizedBox(
              height: 120,
              child: PageView.builder(
                controller: controller,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
              )),
          SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: ExpandingDotsEffect(
              expansionFactor: 2,
              dotHeight: 4,
              dotWidth: 4,
              spacing: 3,
              activeDotColor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class ApplicationGrid extends StatelessWidget {
  const ApplicationGrid({super.key, required this.appList});

  final List appList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      padding: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        childAspectRatio: 1.3 / 1,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
            title: appList[index]['title'], icon: appList[index]['icon']);
      },
    );
  }
}
