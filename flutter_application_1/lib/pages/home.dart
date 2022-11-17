import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/rep/GridListData1.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  // late TabController _tabController2;
  @override
  //生命周期函数，当组件初始化化是触发
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
    // _tabController2 = TabController(length: 5, vsync: this);
  }

//第二列数据

  Widget _builder(context, index) {
    return Container(
        width: 80,
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(5, 5, 5, 10),
                child: Column(
                  children: const [
                    Image(
                        height: 40,
                        width: 40,
                        image: NetworkImage(
                            "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg2.3png.com%2Fcf9a9f5ceaf26474749f5918a5aecddbc481.png&refer=http%3A%2F%2Fimg2.3png.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671071294&t=a3d5b32f8974b13b0994ce13a5967545"),
                        fit: BoxFit.cover),
                    Text(
                      "天天领现金",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 141, 138, 138)),
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.fromLTRB(5, 5, 5, 10),
                child: Column(
                  children: const [
                    Image(
                      height: 40,
                      width: 40,
                      image: NetworkImage(
                          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg2.3png.com%2Fcf9a9f5ceaf26474749f5918a5aecddbc481.png&refer=http%3A%2F%2Fimg2.3png.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671071294&t=a3d5b32f8974b13b0994ce13a5967545"),
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "免费领水果",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 141, 138, 138)),
                    )
                  ],
                )),
          ],
        ));
  }

// 商品页数据
  List<Widget> _initGridViewData() {
    List<Widget> listData = [];
    for (var i = 0; i < 20; i++) {
      listData.add(Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Column(children: [
            Container(
              height: 185,
              margin: EdgeInsets.only(bottom: 5),
              child: Image.network(
                "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpicnew9.photophoto.cn%2F20150812%2Fnvzhuangtaobaozhutu-05273230_1.jpg&refer=http%3A%2F%2Fpicnew9.photophoto.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671071720&t=e93947f0e36bf1909a55db5ca313796c",
                fit: BoxFit.cover,
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

  //单独封装数据
  // List <Widget> _initGridViewData(context, index) {
  //   return Container(
  //     decoration: BoxDecoration(color: Colors.white),
  //     child: Column(
  //       children: [
  //         Container(
  //           height: 180,
  //          margin: EdgeInsets.only(bottom: 5),
  //           child: Image.network(
  //             GridListData1[index]["imageUrl"],
  //             fit: BoxFit.cover,
  //           ),
  //         ),

  //         Row(
  //           children: [
  //             Container(
  //             margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
  //               child: Text(
  //                 GridListData1[index]["title"],
  //                 style: const TextStyle(
  //                     color: Color.fromARGB(255, 26, 26, 26), fontSize: 16),
  //               ),
  //             ),
  //           ],
  //         ),
  //         // Row(
  //         //   children: [
  //         //     Container(
  //         //       child: Text(
  //         //         GridListData1[index]["content1"],
  //         //         style:const  TextStyle(
  //         //             color: Color.fromARGB(255, 3, 170, 8), fontSize: 8),
  //         //       ),
  //         //     ),
  //         //      Container(
  //         //       child: Text(
  //         //         GridListData1[index]["content2"],
  //         //         style:const  TextStyle(
  //         //             color: Colors.red, fontSize: 8),
  //         //       ),
  //         //     ),
  //         //   ],
  //         // ),
  //         // Row(
  //         //   children: [
  //         //     //Icon(GridListData1[index]["icon"]),
  //         //     Container(
  //         //       child: Text(
  //         //         GridListData1[index]["content3"],
  //         //         style:const  TextStyle(
  //         //             color: Colors.red, fontSize: 14),
  //         //       ),
  //         //     ),
  //         //      Container(
  //         //       child: Text(
  //         //         GridListData1[index]["content"],
  //         //         style:const  TextStyle(
  //         //             color: Color.fromARGB(255, 122, 121, 120), fontSize: 12),
  //         //       ),
  //         //     ),
  //         //   ],
  //         // )
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            //设置appBarheight
            PreferredSize(
          preferredSize: const Size.fromHeight(89),
          child: AppBar(
            elevation: 1, //去掉下边框阴影
            //  shape: Border(
            //   bottom: BorderSide(color: Color.fromARGB(255, 186, 180, 180))
            //  ),
            bottom: PreferredSize(
                preferredSize: Size(double.infinity, 30),
                child: TabBar(
                  labelColor: const Color.fromARGB(255, 231, 21, 6),
                  indicatorColor: const Color.fromARGB(255, 216, 20, 6),
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: const Color.fromARGB(255, 41, 40, 40),
                  labelStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                  unselectedLabelStyle: const TextStyle(fontSize: 16),
                  isScrollable: true,
                  controller: _tabController, //配置_tabController需要把TaBar的const去掉
                  tabs: const [
                    Tab(
                      child: Text("推荐"),
                    ),
                    Tab(
                      child: Text("水果"),
                    ),
                    Tab(
                      child: Text("食品"),
                    ),
                    Tab(
                      child: Text("家具"),
                    ),
                    Tab(
                      child: Text("百货"),
                    ),
                    Tab(
                      child: Text("女装"),
                    ),
                    Tab(
                      child: Text("饰品"),
                    ),
                    Tab(
                      child: Text("鞋包"),
                    )
                  ],
                )),

            backgroundColor: Colors.white,
            actions: [
              UnconstrainedBox(
                child: Container(
                    margin: const EdgeInsets.fromLTRB(5, 6, 10, 0),
                    height: 35,
                    width: 370,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 232, 233, 230),
                        borderRadius: BorderRadius.circular(8)),
                    child: const TextField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.search,
                                color: Color.fromARGB(255, 195, 194, 194)),
                            // prefixIcon: Icon(Icons.search,
                            //     color: Color.fromARGB(255, 179, 178, 177)), //添加内部左边图标
                            // prefixIconConstraints: BoxConstraints(
                            //     //添加内部图标之后，图标和文字会有间距，实现这个方法，不用写任何参数即可解决
                            //     ),
                            hintText: "椅子办公椅",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 179, 178, 177),
                                fontSize: 15),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 100, top: 20, right: 100, bottom: 10),
                            suffixIcon: Icon(Icons.camera_alt_outlined,
                                color: Color.fromARGB(255, 179, 178, 177))))),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  //第一条列表
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Image.asset("images/pinxiaoquan.PNG"),
                        ),
                        Container(
                          child: const Text(
                            "拼小圈",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 100),
                          height: 20,
                          width: 60,
                          child: Stack(alignment: Alignment(-1, 0), children: [
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
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9),
                                  image: const DecorationImage(
                                      image: AssetImage("images/1.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                          child: const Text("8条更新",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 166, 163, 163),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.red[600]),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Color.fromARGB(255, 156, 155, 154),
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
                  //第二条列表
                  Container(
                    height: 150,
                    child: ListView.builder(
                      //controller:  _tabController2 ,
                      scrollDirection: Axis.horizontal,
                      physics: AlwaysScrollableScrollPhysics(),
                      primary: false,
                      itemCount: 8,
                      shrinkWrap: true,
                      itemBuilder: _builder,
                    ),
                  ),
                  SizedBox(
                    width: 600,
                    height: 8,
                    child: Container(
                      color: Color.fromARGB(251, 238, 235, 235),
                    ),
                  ),
                  //第三条列表
                  Container(
                    height: 100,
                    child: ListView(
                      //静止滑动
                      physics: NeverScrollableScrollPhysics(),
                      // shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        // one
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 5, 0),
                          child: Column(
                            children: [
                              Container(
                                child: const Image(
                                  image: NetworkImage(
                                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.huimin111.com%2F20201212%2Fdd47dd8ece51bd68c374a683399c623f.jpg&refer=http%3A%2F%2Fimg.huimin111.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671085708&t=221cd022658b7e41475146e98732d612"),
                                  width: 38,
                                  height: 38,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                alignment: Alignment.bottomCenter,
                                child: const Text(
                                  "多多买菜",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: const Text(
                                  "次日自提",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 132, 130, 130),
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //two
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Column(
                            children: [
                              Container(
                                child: const Image(
                                  height: 60,
                                  width: 60,
                                  image: NetworkImage(
                                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.xdsucai.cn%2Fwp-content%2Fuploads%2F2021%2F01%2F1610002800-4222a7abb606bfe.png&refer=http%3A%2F%2Fwww.xdsucai.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671089376&t=9c5443156a514c20d3670ef7e13e789b"),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  children: [
                                    Container(
                                      child: const Icon(
                                        Icons.attach_money,
                                        color: Color.fromARGB(255, 246, 34, 18),
                                        size: 12,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        "59.3",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 246, 34, 18),
                                            fontSize: 14),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        //three
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Column(
                            children: [
                              Container(
                                child: const Image(
                                  height: 60,
                                  width: 60,
                                  image: NetworkImage(
                                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.xdsucai.cn%2Fwp-content%2Fuploads%2F2021%2F01%2F1610002800-4222a7abb606bfe.png&refer=http%3A%2F%2Fwww.xdsucai.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671089376&t=9c5443156a514c20d3670ef7e13e789b"),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  children: [
                                    Container(
                                      child: const Icon(
                                        Icons.attach_money,
                                        color: Color.fromARGB(255, 246, 34, 18),
                                        size: 12,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        "59.3",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 246, 34, 18),
                                            fontSize: 14),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        //four
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Column(
                            children: [
                              Container(
                                child: const Image(
                                  height: 60,
                                  width: 60,
                                  image: NetworkImage(
                                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.xdsucai.cn%2Fwp-content%2Fuploads%2F2021%2F01%2F1610002800-4222a7abb606bfe.png&refer=http%3A%2F%2Fwww.xdsucai.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671089376&t=9c5443156a514c20d3670ef7e13e789b"),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  children: [
                                    Container(
                                      child: const Icon(
                                        Icons.attach_money,
                                        color: Color.fromARGB(255, 246, 34, 18),
                                        size: 12,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        "59.3",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 246, 34, 18),
                                            fontSize: 14),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        //five
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Column(
                            children: [
                              Container(
                                child: const Image(
                                  height: 60,
                                  width: 60,
                                  image: NetworkImage(
                                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.xdsucai.cn%2Fwp-content%2Fuploads%2F2021%2F01%2F1610002800-4222a7abb606bfe.png&refer=http%3A%2F%2Fwww.xdsucai.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671089376&t=9c5443156a514c20d3670ef7e13e789b"),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  children: [
                                    Container(
                                      child: const Icon(
                                        Icons.currency_yen,
                                        color: Color.fromARGB(255, 246, 34, 18),
                                        size: 12,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        "59.3",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 246, 34, 18),
                                            fontSize: 14),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
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
                  //第四条列表
                  Container(
                    height: 100,
                    child: ListView(
                      //静止滑动
                      physics: NeverScrollableScrollPhysics(),
                      // shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        // one
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 5, 0),
                          child: Column(
                            children: [
                              Container(
                                child: const Image(
                                  image: NetworkImage(
                                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.huimin111.com%2F20201212%2Fdd47dd8ece51bd68c374a683399c623f.jpg&refer=http%3A%2F%2Fimg.huimin111.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671085708&t=221cd022658b7e41475146e98732d612"),
                                  width: 38,
                                  height: 38,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                alignment: Alignment.bottomCenter,
                                child: const Text(
                                  "多多买菜",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: const Text(
                                  "次日自提",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 132, 130, 130),
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //two
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Column(
                            children: [
                              Container(
                                child: const Image(
                                  height: 60,
                                  width: 60,
                                  image: NetworkImage(
                                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.xdsucai.cn%2Fwp-content%2Fuploads%2F2021%2F01%2F1610002800-4222a7abb606bfe.png&refer=http%3A%2F%2Fwww.xdsucai.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671089376&t=9c5443156a514c20d3670ef7e13e789b"),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  children: [
                                    Container(
                                      child: const Icon(
                                        Icons.attach_money,
                                        color: Color.fromARGB(255, 246, 34, 18),
                                        size: 12,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        "59.3",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 246, 34, 18),
                                            fontSize: 14),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        //three
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Column(
                            children: [
                              Container(
                                child: const Image(
                                  height: 60,
                                  width: 60,
                                  image: NetworkImage(
                                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.xdsucai.cn%2Fwp-content%2Fuploads%2F2021%2F01%2F1610002800-4222a7abb606bfe.png&refer=http%3A%2F%2Fwww.xdsucai.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671089376&t=9c5443156a514c20d3670ef7e13e789b"),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  children: [
                                    Container(
                                      child: const Icon(
                                        Icons.attach_money,
                                        color: Color.fromARGB(255, 246, 34, 18),
                                        size: 12,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        "59.3",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 246, 34, 18),
                                            fontSize: 14),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        //four
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Column(
                            children: [
                              Container(
                                child: const Image(
                                  height: 60,
                                  width: 60,
                                  image: NetworkImage(
                                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.xdsucai.cn%2Fwp-content%2Fuploads%2F2021%2F01%2F1610002800-4222a7abb606bfe.png&refer=http%3A%2F%2Fwww.xdsucai.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671089376&t=9c5443156a514c20d3670ef7e13e789b"),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  children: [
                                    Container(
                                      child: const Icon(
                                        Icons.attach_money,
                                        color: Color.fromARGB(255, 246, 34, 18),
                                        size: 12,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        "59.3",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 246, 34, 18),
                                            fontSize: 14),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        //five
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Column(
                            children: [
                              Container(
                                child: const Image(
                                  height: 60,
                                  width: 60,
                                  image: NetworkImage(
                                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.xdsucai.cn%2Fwp-content%2Fuploads%2F2021%2F01%2F1610002800-4222a7abb606bfe.png&refer=http%3A%2F%2Fwww.xdsucai.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1671089376&t=9c5443156a514c20d3670ef7e13e789b"),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  children: [
                                    Container(
                                      child: const Icon(
                                        Icons.attach_money,
                                        color: Color.fromARGB(255, 246, 34, 18),
                                        size: 12,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        "59.3",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 246, 34, 18),
                                            fontSize: 14),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  //商品页面
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 237, 237, 237),
                    ),
                    child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: EdgeInsets.all(8),
                        crossAxisCount: 2, //一行显示多少个元素
                        crossAxisSpacing: 8, //子元素间的水平间距
                        mainAxisSpacing: 8, //子元素间的垂直间距
                        childAspectRatio: 0.7, //宽高比
                        children: _initGridViewData()),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
