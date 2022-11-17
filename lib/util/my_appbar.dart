import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red[50],
        child: Padding(
          padding:
              const EdgeInsets.only(top: 0, right: 15, bottom: 5, left: 15),
          child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20), right: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomSearchBarButton(
                        icon: 0xe692, size: 16.0, color: Colors.red),
                    Text('DiJi无人机'),
                    Spacer(),
                    CustomSearchBarButton(
                        icon: 0xe614, size: 22.0, color: Color(0xFF999999)),
                    CustomSearchBarButton(
                        icon: 0xe8b6, size: 22.0, color: Color(0xFF999999)),
                  ])),
        ));
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.icon1,
    required this.icon2,
    required this.icon3,
  });

  final IconData icon1;
  final IconData icon2;
  final IconData icon3;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red[50],
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.04 + 5,
              right: 5,
              bottom: 0,
              left: 5),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            CustomIcon(icon: icon1),
            Spacer(),
            CustomIcon(icon: icon2),
            CustomSearchBarButton(
                icon: 0xe8b8, size: 22.0, color: Colors.black),
          ]),
        ));
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.black54,
          size: 26,
        ),
      ),
    );
  }
}

class CustomSearchBarButton extends StatelessWidget {
  const CustomSearchBarButton(
      {super.key, required this.icon, required this.size, required this.color});

  final int icon;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          IconData(icon, fontFamily: 'iconfont'),
          color: color,
          size: size,
        ),
      ),
    );
  }
}
