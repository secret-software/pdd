import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(title: const Text("你好Flutter")),
        body: Column(
          children: const [MyApp()],
        )),
  ));
}

//代码快statelessM      MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      
      height: 200,
      width: 200,
      decoration:
           BoxDecoration(color: Color.fromARGB(255, 228, 230, 227),
          borderRadius:  BorderRadius.circular(75),
          image:const DecorationImage(
            image: NetworkImage("https://cdn.pinduoduo.com/upload/home/img/common/pdd_logo_v2.png"),
            fit: BoxFit.cover
            )
          ),
      
    )
    );
  }

//MyButton

}

//MyButton
// class MyButton extends StatelessWidget {
//   const MyButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40,
//       width: 200,
//       margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
//       decoration: const BoxDecoration(color: Colors.blue),
//     );
//   }
//}
