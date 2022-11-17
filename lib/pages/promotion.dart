import 'package:flutter/material.dart';

class Promotion extends StatefulWidget {
  const Promotion({super.key});

  @override
  State<Promotion> createState() => _PromotionState();
}

//左列数据
List<Widget> _listTileData() {
  List<Widget> listData = [];
  for (var i = 0; i < 23; i++) {
    listData.add(Container(
      width: 30,
      margin: EdgeInsets.only(left: 10),
      child: const ListTile(
        title: Text("食品",
            style: TextStyle(
                color: Color.fromARGB(255, 19, 19, 19), fontSize: 16)),
      ),
    ));
    // listData.add(Container(
    //   child: Text("食品",style: TextStyle(
    //                           color: Color.fromARGB(255, 19, 19, 19),
    //                           fontSize: 16)),
    // ));
  }
  return listData;
}

// 右列数据
List<Widget> _gridData1() {
  List<Widget> gridData = [];
  for (var i = 0; i < 24; i++) {
    gridData.add(Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(children: [
          Container(
            height: 60,
            width: 60,
            margin: EdgeInsets.only(bottom: 5),
            child: Image.network(
              "http://t14.baidu.com/it/u=3669265908,4201389703&fm=224&app=112&f=JPEG?w=350&h=350",
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: const Text(
                  "椅子凳子",
                  style: TextStyle(
                      color: Color.fromARGB(255, 26, 26, 26), fontSize: 14),
                ),
              ),
            ],
          ),
        ])));
  }
  return gridData;
}

class _PromotionState extends State<Promotion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(89),
          child: AppBar(
              centerTitle: true,
              title: const Text(
                '分类',
                style: TextStyle(
                    color: Color.fromARGB(255, 51, 51, 51), fontSize: 17),
              ),
              elevation: 1,
              backgroundColor: Colors.white,
              actions: [
                Container(
                    child: const Icon(
                  Icons.upload_file,
                  color: Color.fromARGB(255, 110, 110, 110),
                  size: 30,
                )),
              ],
              bottom: PreferredSize(
                  preferredSize: const Size(double.infinity, 40),
                  child: UnconstrainedBox(
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(5, 6, 10, 8),
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
                                    color:
                                        Color.fromARGB(255, 179, 178, 177))))),
                  )))),
      body: Row(
        children: [
          //左列
          Container(
            width: 80,
            child: ListView(children: _listTileData()),
          ),
          // 右列
          Container(
            width: 300,
            child: ListView(
              children: [
               
                   Container(
                  width: 90,
                  padding: EdgeInsets.only(left: 0),
                  margin: EdgeInsets.fromLTRB(0, 18, 0, 10),
                  child: Row(
                    children: const [
                      Text("热门分类",
                          style: TextStyle(
                              color: Color.fromARGB(255, 11, 11, 11),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Color.fromARGB(255, 51, 50, 50),
                      )
                    ],
                  ),
                   ),
                 
                  Container(
                    // height: 600,
                    child: 
                       GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      //padding: EdgeInsets.all(8),
                      crossAxisCount: 3, //一行显示多少个元素
                      childAspectRatio: 0.8, //宽高比
                      children: _gridData1()),
                    
                   ),
                Container(
                  width: 90,
                  padding: EdgeInsets.only(left: 0),
                  margin: EdgeInsets.fromLTRB(0, 18, 0, 10),
                  child: Row(
                    children: const [
                      Text("热门商品",
                          style: TextStyle(
                              color: Color.fromARGB(255, 11, 11, 11),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                     
                    ],
                  ),
                   )   
              ],
            ),
          )
        //   Container(
        //     child: Column(
        //       children: [
        //         Container(
        //           width: 90,
        //           padding: EdgeInsets.only(left: 0),
        //           margin: EdgeInsets.fromLTRB(0, 18, 0, 10),
        //           child: Row(
        //             children: const [
        //               Text("热门分类",
        //                   style: TextStyle(
        //                       color: Color.fromARGB(255, 11, 11, 11),
        //                       fontSize: 16,
        //                       fontWeight: FontWeight.w500)),
        //               Icon(
        //                 Icons.arrow_forward_ios,
        //                 size: 14,
        //                 color: Color.fromARGB(255, 51, 50, 50),
        //               )
        //             ],
        //           ),
        //         ),
        //         //右列网格,
        //         ListView(
        //           children: [
        //             Container(
        //           width: 310,
        //           height: 600,
        //           decoration: const BoxDecoration(
        //             color: Color.fromARGB(255, 52, 50, 50),
        //           ),
        //           child:Column(
        //             children: [
        //                GridView.count(
        //               physics: NeverScrollableScrollPhysics(),
        //               //shrinkWrap: true,
        //               //padding: EdgeInsets.all(8),
        //               crossAxisCount: 3, //一行显示多少个元素
        //               childAspectRatio: 0.8, //宽高比
        //               children: _gridData()),
        //             ],
        //           )
        //         )
        //           ],
        //         )
                
        //       ],
        //     ),
        //   )
         ],
      ),
    );
  }
}
