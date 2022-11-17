import 'package:flutter/material.dart';

class iconTextTab extends StatelessWidget {
  // [icon, Text, appendix]
  List iconWithTexts = [
    [Icons.numbers_sharp, '趋势', false],
    [Icons.laptop, '教育笔记本', true],
    [Icons.laptop_chromebook, '高性能笔记本', true],
    [Icons.print_outlined, '家庭打印机', true],
    [Icons.mouse, '人体工程鼠标', true],
    [Icons.laptop, '教育笔记本', true],
    [Icons.laptop, '教育笔记本', true],
    [Icons.laptop, '教育笔记本', true],
    [Icons.laptop, '教育笔记本', true],
    [Icons.laptop, '教育笔记本', true],
    [Icons.laptop, '教育笔记本', true],
    [Icons.laptop, '教育笔记本', true],
  ];

  List<Widget> _getListData() {
    var tempList = iconWithTexts.map((value) {
      return IconTextTile(
        icon: value[0],
        title: value[1],
        hasAppendix: value[2],
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Row(children: _getListData())),
    );
  }
}

class IconTextTile extends StatelessWidget {
  const IconTextTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.hasAppendix});

  final IconData icon;
  final String title;
  final bool hasAppendix;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.red[200],
                  size: 20,
                ),
                Padding(padding: EdgeInsets.only(right: 5)),
                Text(title),
                Padding(padding: EdgeInsets.only(right: 5)),
                hasAppendix
                    ? Text(
                        '>',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : Text(''),
              ],
            )));
  }
}
