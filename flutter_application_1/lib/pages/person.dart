import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

//第一列第二行数据
List<Widget> _listData() {
  List<Widget> listData = [];
  for (var i = 0; i < 5; i++) {
    listData.add(Container(
      margin: EdgeInsets.fromLTRB(30, 10, 10, 0),
      child: Column(
        children: [
          Container(
              child: const Icon(
            Icons.access_time,
            size: 30,
            color: Color.fromARGB(255, 177, 175, 175),
          )),
          Container(
            margin: EdgeInsets.only(top: 8),
            alignment: Alignment.bottomCenter,
            child: const Text(
              "待分享",
              style: TextStyle(
                  color: Color.fromARGB(255, 55, 55, 55),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    ));
  }
  return listData;
}

//第三列数据
List<Widget> _listData2() {
  List<Widget> listData = [];
  for (var i = 0; i < 5; i++) {
    listData.add(Container(
      margin: EdgeInsets.fromLTRB(20, 20, 10, 0),
      child: Column(
        children: [
          Container(
              child: const Icon(
            Icons.add_box,
            size: 30,
            color: Color.fromARGB(255, 205, 5, 5),
          )),
          Container(
            margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
            padding: EdgeInsets.only(bottom: 0),
            alignment: Alignment.bottomCenter,
            child: const Text(
              "店铺关注",
              style: TextStyle(
                  color: Color.fromARGB(255, 55, 55, 55),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    ));
  }
  return listData;
}

//第四列数据
List<Widget> _gridData() {
  List<Widget> listData = [];
  for (var i = 0; i < 10; i++) {
    listData.add(Container(
      margin: EdgeInsets.fromLTRB(20, 20, 10, 0),
      child: Column(
        children: [
          Container(
              child: const Icon(
            Icons.location_on_outlined,
            size: 30,
            color: Color.fromARGB(255, 243, 177, 91),
          )),
          Container(
            margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
            padding: EdgeInsets.only(bottom: 0),
            alignment: Alignment.bottomCenter,
            child: const Text(
              "收货地址",
              style: TextStyle(
                  color: Color.fromARGB(255, 55, 55, 55),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    ));
  }
  return listData;
}

// 第七列
List<Widget> _initGridViewData() {
  List<Widget> listData = [];
  for (var i = 0; i < 20; i++) {
    listData.add(Container(
         margin: EdgeInsets.only(top: 2),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(children: [
          Container(
            height: 185,
            margin: EdgeInsets.only(bottom: 5),
            child: Image.network(
              "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpicnew9.photophoto.cn%2F20150812%2Fnvzhuangtaobaozhutu-05273230_1.jpg&refer=http%3A%2F%2Fpicnew9.photophoto.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671071720&t=e93947f0e36bf1909a55db5ca313796c",
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
                child: const Text(
                  "过膝袜子女秋加绒加厚",
                  style: TextStyle(
                      color: Color.fromARGB(255, 26, 26, 26), fontSize: 16),
                ),
              ),
            ],
          ),
        ])));
    //
  }
  return listData;
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: PreferredSize(
        //     preferredSize: const Size.fromHeight(45),
        //     child: AppBar(
        //       centerTitle: true,
        //       title: const Text(
        //         '个人中心',
        //         style: TextStyle(
        //             color: Color.fromARGB(255, 45, 45, 45),
        //             fontSize: 17,
        //             fontWeight: FontWeight.w400),
        //       ),
        //       elevation: 1,
        //       backgroundColor: Colors.white,
        //       actions: [
        //         Container(
        //             margin: EdgeInsets.only(left: 5),
        //             padding: EdgeInsets.fromLTRB(0, 13, 10, 10),
        //             child: const Text("资质规则",
        //                 style: TextStyle(
        //                     color: Color.fromARGB(255, 170, 167, 167),
        //                     fontSize: 13)))
        //       ],
        //     )),
        body: Container(
      height: 800,
      child: ListView(
        children: [
          //头部
          Container(
            child: Column(
              children: [
                //第1列
                Container(
                  margin: EdgeInsets.fromLTRB(18, 25, 10, 0),
                  child: Row(
                    children: [
                      //第1列第1个
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 225, 207, 207),
                                width: 1),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202108%2F21%2F20210821060555_67898.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671152673&t=3561533c8b4ecccbc83ec241419ca055"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      //第1列第2个
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Row(children: [
                                const Text(
                                  "啦啦啦",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 4),
                                  height: 18,
                                  width: 18,
                                  child: Image.asset(
                                    "images/weixin.PNG",
                                  ),
                                ),
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Container(
                                    height: 18,
                                    width: 18,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(9),
                                        image: const DecorationImage(
                                            image: AssetImage("images/1.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: const Text(
                                      "好友更新+13",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                              255, 138, 138, 138)),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //第1列第3个
                      Container(
                        margin: EdgeInsets.only(left: 80),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 6),
                              height: 30,
                              width: 90,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 155, 147, 147),
                                    width: 0.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Row(children: const [
                                Image(
                                  height: 25,
                                  width: 20,
                                  image: NetworkImage(
                                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg2.3png.com%2Fcf9a9f5ceaf26474749f5918a5aecddbc481.png&refer=http%3A%2F%2Fimg2.3png.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671071294&t=a3d5b32f8974b13b0994ce13a5967545"),
                                  fit: BoxFit.fitWidth,
                                ),
                                Text("直接免单",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 40, 40, 40),
                                    ))
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 7),
                              padding: EdgeInsets.only(left: 6),
                              height: 30,
                              width: 90,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 155, 147, 147),
                                    width: 0.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Row(children: const [
                                Image(
                                  height: 25,
                                  width: 20,
                                  image: NetworkImage(
                                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg2.3png.com%2Fcf9a9f5ceaf26474749f5918a5aecddbc481.png&refer=http%3A%2F%2Fimg2.3png.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671071294&t=a3d5b32f8974b13b0994ce13a5967545"),
                                  fit: BoxFit.fitWidth,
                                ),
                                Text("直接免单",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 40, 40, 40),
                                    ))
                              ]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 42,
                  width: 360,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(255, 253, 226, 228)),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 0),
                        margin: const EdgeInsets.only(left: 22),
                        child: const Text(
                          "省钱月卡",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 224, 31, 31)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 110),
                        width: 120,
                        height: 24,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.only(left: 0),
                        child: const Text(
                          "你有124元劵未领取",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 224, 31, 31)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: const Icon(Icons.arrow_forward_ios_rounded,
                            size: 12, color: Color.fromARGB(255, 224, 31, 31)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          //第一列
          Container(
            height: 120,
            margin: EdgeInsets.only(bottom: 5),
            padding: EdgeInsets.only(top: 0),
            child: Column(
              children: [
                //第一行
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.only(top: 0),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 22),
                        child: const Text(
                          "我的订单",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 220),
                        child: const Text(
                          "查看全部",
                          style: TextStyle(
                              color: Color.fromARGB(255, 156, 155, 155),
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2),
                        child: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
                          color: Color.fromARGB(255, 186, 185, 185),
                        ),
                      )
                    ],
                  ),
                ),
                //第二行
                Container(
                  height: 80,
                  width: 450,
                  child: ListView(
                    //静止滑动
                    physics: NeverScrollableScrollPhysics(),
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: _listData(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 600,
            height: 8,
            child: Container(
              color: Color.fromARGB(251, 238, 235, 235),
            ),
          ),
          //第二列
          Container(
            height: 50,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.fromLTRB(22, 0, 0, 0),
            child: Row(
              children: [
                Container(
                  child: const Text(
                    "多多钱包",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 60),
                  padding: EdgeInsets.all(0),
                  child: const Icon(
                    Icons.currency_yen,
                    size: 13,
                    color: Color.fromARGB(255, 250, 27, 11),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                  padding: EdgeInsets.only(left: 0),
                  child: const Text("100",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 250, 27, 11),
                          fontWeight: FontWeight.w600)),
                ),
                Container(
                  child: const Text("天天领优惠，劵后再减100元",
                      style: TextStyle(fontSize: 13, color: Colors.red)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 2),
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                    color: Color.fromARGB(255, 186, 185, 185),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 600,
            height: 8,
            child: Container(
              color: Color.fromARGB(251, 238, 235, 235),
            ),
          ),
          //第三列
          Container(
            alignment: Alignment.center,
            height: 95,
            width: 450,
            child: ListView(
              //静止滑动
              physics: NeverScrollableScrollPhysics(),
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: _listData2(),
            ),
          ),
          SizedBox(
            width: 600,
            height: 8,
            child: Container(
              color: Color.fromARGB(251, 238, 235, 235),
            ),
          ),
          //第四列
          Container(
            height: 180,
            child: GridView.count(crossAxisCount: 5, children: _gridData()),
          ),
          //五
          Container(
              width: 600,
              height: 80,
              color: Color.fromARGB(251, 238, 235, 235),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 8, 10, 5),
                    clipBehavior: Clip.hardEdge,
                    width: double.infinity,
                    height: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 249, 246, 246)),
                    child: Image.network(
                        "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fss2.meipian.me%2Fusers%2F3171123%2Ffe4ed1e8d1e6d80e5267fd3e188df30f.jpg%3Fmeipian-raw%2Fbucket%2Fivwen%2Fkey%2FdXNlcnMvMzE3MTEyMy9mZTRlZDFlOGQxZTZkODBlNTI2N2ZkM2UxODhkZjMwZi5qcGc%3D%2Fsign%2Facd36a852183f12ea4bc152581418432.jpg&refer=http%3A%2F%2Fss2.meipian.me&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671181029&t=d1d6efa3bdea0ab54fc903ce3709f202",
                        fit: BoxFit.cover),
                  )
                ],
              )),
          //六
          Container(
            margin: EdgeInsets.fromLTRB(150, 10, 100, 5),
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.local_grocery_store_rounded,
                    size: 20,
                    color: Color.fromARGB(255, 230, 23, 8),
                  ),
                ),
                Container(
                  child: Text(
                    "精选推荐",
                    style: TextStyle(
                        color: Color.fromARGB(255, 230, 23, 8), fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          // qi
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 237, 237, 237),
            ),
            child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                crossAxisCount: 2, //一行显示多少个元素
                crossAxisSpacing: 2, //子元素间的水平间距
                mainAxisSpacing: 0, //子元素间的垂直间距
                childAspectRatio: 0.7, //宽高比
                children: _initGridViewData()),
          )
        ],
      ),
    ));
  }
}
