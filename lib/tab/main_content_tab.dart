import 'package:flutter/material.dart';

import 'package:JDMall/util/my_tab_with_icon.dart';
import 'package:JDMall/util/my_tab_with_module.dart';
import 'package:JDMall/util/my_type_with_icontext.dart';
import 'package:JDMall/util/goods.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    // 当ListView没有和AppBar一起使用时，Flutter默认会为ListView增加20的TopPadding，可以使用MediaQuery.removePadding来删除默认的Padding
    return MediaQuery.removePadding(
        removeTop: true,
        removeBottom: true,
        context: context,
        child: ListView(
          children: [
            Container(height: 125, child: CenterTab()),
            Container(height: 248, child: ModuleTab()),
            Container(height: 32, child: iconTextTab()),
            Container(child: GoodsCardContent()),
          ],
        ));
  }
}
