import 'package:flutter/material.dart';
import 'package:JDMall/util/smooth_page_indicator.dart';
// class AccountPage extends StatelessWidget {
//   @override
//   var _index;
//   Widget build(BuildContext context) {
//     return PageView(
//       scrollDirection: Axis.horizontal,
//       reverse: false,
//       onPageChanged: (),
//     );
//   }
// }

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int _index = 0;
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        6,
        (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Container(
                height: 280,
                child: Center(
                    child: Text(
                  "Page $index",
                  style: TextStyle(color: Colors.indigo),
                )),
              ),
            ));
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
          SizedBox(height: 16),
          SizedBox(
            height: 240,
            child: PageView.builder(
              controller: controller,
              // itemCount: pages.length,
              itemBuilder: (_, index) {
                return pages[index % pages.length];
              },
            ),
          ),
          SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: ExpandingDotsEffect(
              dotHeight: 6,
              dotWidth: 6,
              activeDotColor: Colors.red,
            ),
          ),
        ]))));
  }
}

// import '../effects/expanding_dots_effect.dart';
// import 'indicator_painter.dart';

