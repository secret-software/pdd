import 'package:flutter/material.dart';

// class MyTab extends StatelessWidget {
//   final String iconPath;

//   const MyTab({super.key, required this.iconPath});

//   @override
//   Widget build(BuildContext context) {
//     return Tab(
//       height: 80,
//       child: Container(
//         padding: EdgeInsets.all(12),
//         decoration: BoxDecoration(
//             color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
//         child: Image.asset(
//           iconPath,
//           color: Colors.grey[600],
//         ),
//       ),
//     );
//   }
// }
class MyTab extends StatelessWidget {
  const MyTab({super.key, required this.tabName});

  final String tabName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, right: 0, bottom: 5, left: 0),
      child: Container(
        height: 20,
        child: Text(tabName,
            style: TextStyle(
                color: Colors.black87, overflow: TextOverflow.visible)),
      ),
    );
  }
}
