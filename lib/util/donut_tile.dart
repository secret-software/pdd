import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String title;
  final String icon;

  final double borderRadius = 6;

  const DonutTile({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, right: 2, bottom: 2),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            // donut picture
            Image.asset(
              icon,
              width: 40,
            ),
            // donut flavor
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
