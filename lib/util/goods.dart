import 'package:flutter/material.dart';

class GoodsCardContent extends StatelessWidget {
  List moduleContent = [
    // [ image, title, price, buttonText ]
    [
      'https://img14.360buyimg.com/jdcms/s150x150_jfs/t1/210904/11/28625/55846/636f9153E856e56c2/fe0dfff034791ec5.jpg',
      "【免费上门安装】史密斯.劳伦小厨宝热水器电家用储水式厨房热水宝即热式小型迷你 10升上下出水 10升触控大屏1500W加热+上出水",
      "589.00",
      "看相似"
    ],
    [
      "https://img30.360buyimg.com/jdcms/s150x150_jfs/t1/172140/32/25463/157115/61d405abE11d640da/71eaf57065212ae2.jpg",
      "红酒架子斜放家用红酒架子 高档挂墙实木酒架柜客厅红酒展示架葡萄酒架落地隔断架酒架格子摆件 免安装(碳化色十瓶装)",
      "38.42",
      "看相似"
    ],
    [
      "https://img30.360buyimg.com/jdcms/s150x150_jfs/t1/172140/32/25463/157115/61d405abE11d640da/71eaf57065212ae2.jpg",
      "红酒架子斜放家用红酒架子 高档挂墙实木酒架柜客厅红酒展示架葡萄酒架落地隔断架酒架格子摆件 免安装(碳化色十瓶装)",
      "38.42",
      "看相似"
    ],
    [
      'https://img14.360buyimg.com/jdcms/s150x150_jfs/t1/210904/11/28625/55846/636f9153E856e56c2/fe0dfff034791ec5.jpg',
      "【免费上门安装】史密斯.劳伦小厨宝热水器电家用储水式厨房热水宝即热式小型迷你 10升上下出水 10升触控大屏1500W加热+上出水",
      "589.00",
      "看相似"
    ],
    [
      'https://img14.360buyimg.com/jdcms/s150x150_jfs/t1/210904/11/28625/55846/636f9153E856e56c2/fe0dfff034791ec5.jpg',
      "【免费上门安装】史密斯.劳伦小厨宝热水器电家用储水式厨房热水宝即热式小型迷你 10升上下出水 10升触控大屏1500W加热+上出水",
      "589.00",
      "看相似"
    ],
    [
      "https://img30.360buyimg.com/jdcms/s150x150_jfs/t1/172140/32/25463/157115/61d405abE11d640da/71eaf57065212ae2.jpg",
      "红酒架子斜放家用红酒架子 高档挂墙实木酒架柜客厅红酒展示架葡萄酒架落地隔断架酒架格子摆件 免安装(碳化色十瓶装)",
      "38.42",
      "看相似"
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: moduleContent.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.3,
      ),
      itemBuilder: (context, index) {
        return GoodsCartGenerate(
          image: moduleContent[index][0],
          title: moduleContent[index][1],
          price: moduleContent[index][2],
          buttonText: moduleContent[index][3],
        );
      },
    );
  }
}

class GoodsCartGenerate extends StatelessWidget {
  const GoodsCartGenerate(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.buttonText});

  final String image;
  final String title;
  final String price;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3, bottom: 6, left: 3),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Image.network(image),
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                      TextSpan(style: TextStyle(color: Colors.red), children: [
                    const TextSpan(
                        text: '￥',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold)),
                    TextSpan(text: price, style: TextStyle(fontSize: 16))
                  ])),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(buttonText,
                        style: TextStyle(
                          fontSize: 12,
                        )),
                  )
                ],
              )
            ],
          )),
    );
  }
}


// Padding(
//         padding: const EdgeInsets.only(left: 3, right: 3),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(5),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                   padding: EdgeInsets.only(top: 5, bottom: 3, left: 0),
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(
//                     colors: [Color.fromARGB(255, 253, 229, 227), Colors.white],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                   )),
//                   child: Row(children: [
//                     Padding(
//                       padding: EdgeInsets.only(right: 45),
//                       child: Text(mainTitle,
//                           style: TextStyle(fontWeight: FontWeight.bold)),
//                     ),
//                     Text(subTitle,
//                         style: TextStyle(fontWeight: FontWeight.bold)),
//                   ])),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Image(
//                     image: NetworkImage(imageName1),
//                     width: 80,
//                     height: 80,
//                   ),
//                   Image(
//                     image: NetworkImage(imageName2),
//                     width: 80,
//                     height: 80,
//                   )
//                 ],
//               )
//             ],
//           ),
//         ));
