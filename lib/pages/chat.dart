import 'package:flutter/material.dart';
import 'package:flutter_application_1/Button/BottomBarIcon.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

List<Widget> _listTileData() {
  List<Widget> listData = [];
  for (var i = 0; i < 19; i++) {
    listData.add(Container(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 228, 230, 227),
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                        image: NetworkImage(
                          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.duoziwang.com%2F2019%2F05%2F08050202207916.jpg&refer=http%3A%2F%2Fimg.duoziwang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671102658&t=acdae4f37d0259b692594db6be6b01d8",
                        ),
                        fit: BoxFit.cover)),
              ),
              title: Container(
                child:const Text(
                  "拼多多官方客服",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
              ),
              subtitle: Container(
                child: const Text("你的订单已退款成功，订单退款详情为：........",
                    style: TextStyle(
                        color: Color.fromARGB(255, 165, 165, 165),
                        fontSize: 14)),
              ),
              trailing: Container(
                  width: 50,
                  alignment: Alignment.topCenter,
                  child: const Text("22/11/15",
                      style: TextStyle(
                          color: Color.fromARGB(255, 165, 165, 165),
                          fontSize: 12))),
            ),
         const  Divider(
           indent:80,
           height: 2,
           thickness: 0.5,
           color: Color.fromARGB(255, 246, 238, 238),
          )
          ],
        )));
  }

  return listData;
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(45),
            child: AppBar(
              centerTitle: true,
              title: const Text(
                '聊天',
                style: TextStyle(
                    color: Color.fromARGB(255, 51, 51, 51), fontSize: 17),
              ),
              elevation: 1,
              backgroundColor: Colors.white,
              actions: [
                Container(
                    child: const Icon(
                  Icons.chat_bubble_outline_sharp,
                  color: Color.fromARGB(255, 110, 110, 110),
                  size: 20,
                )),
                Container(
                    margin: EdgeInsets.only(left: 5),
                    padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                    child: const Text("发起",
                        style: TextStyle(
                            color: Color.fromARGB(255, 110, 110, 110),
                            fontSize: 16)))
              ],
              // UnconstrainedBox(

              //     child: ListView(shrinkWrap: true, children: const [
              //       Text('聊天',
              //                 style: TextStyle(
              //                     color: Color.fromARGB(255, 78, 77, 77),
              //                     fontSize: 17),
              //               ),
              // ListTile(
              //   title: Expanded(
              //     child: Row(children: [

              //       // const Icon(Icons.chat_bubble_outline_sharp,
              //       //     color: Color.fromARGB(255, 110, 110, 110)),
              //       // Container(
              //       //     child: const Text("发起",
              //       //         style: TextStyle(
              //       //             color: Color.fromARGB(255, 110, 110, 110),
              //       //             fontSize: 16)))
              //     ]),
              //   ),
              // ),
            )),
        body: Column(children: [
          Expanded(
              child: ListView(
            children: [
              // 第一条
              ListTile(
                  title: const Text(
                    "来多多买菜,享更多超值福利",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  //一行文字多种颜色
                  subtitle: RichText(
                      text: const TextSpan(
                    text: '每天来打卡，',
                    style: TextStyle(
                        color: Color.fromARGB(255, 181, 178, 178),
                        fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                        text: '蔬果',
                        style: TextStyle(color: Colors.red),
                        //recognizer: TapGestureRecognizer()..onTap = () async {
                        //这里做点击事件
                        //String url = 'http://www.baidu.com';
                        //if (await canlaunch(url)){
                        //await launch(url);
                        //}
                        //}
                      ),
                      TextSpan(text: '领回家，'),
                    ],
                  )),
                  leading: Container(
                    margin: EdgeInsets.only(left: 0),
                    alignment: Alignment.bottomCenter,
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://img2.baidu.com/it/u=1389718360,1999114614&fm=253&fmt=auto&app=138&f=JPEG?w=600&h=400"),
                            fit: BoxFit.cover)),
                  ),
                  trailing: Container(
                      height: 35,
                      width: 80,
                      child:
                          // ignore: avoid_returning_null_for_void
                          TextButton.icon(
                        onPressed: () => null,
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromARGB(255, 228, 20, 5))),
                        label: const Text("去买菜",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            )),
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 11,
                          color: Colors.white,
                        ),
                      ))),
              SizedBox(
                width: 600,
                height: 7,
                child: Container(
                  color: Color.fromARGB(230, 238, 237, 235),
                ),
              ),
              //第二条
              Container(
                height: 690,
                child: ListView(
                  children: _listTileData(),
                ),
              )
            ],
          ))
        ]));
  }
}
