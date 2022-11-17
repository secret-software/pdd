import 'package:flutter/material.dart';

class ModuleTab extends StatelessWidget {
  List moduleContent = [
    // [ title1, title2, imageName1, ImageName2 ]
    [
      "京东秒杀",
      "",
      'https://img14.360buyimg.com/jdcms/s150x150_jfs/t1/210904/11/28625/55846/636f9153E856e56c2/fe0dfff034791ec5.jpg',
      "https://img10.360buyimg.com/jdcms/s150x150_jfs/t1/118726/32/30639/163714/635c9270Ee0055533/5405dba89f03a786.jpg"
    ],
    [
      "排行榜",
      "",
      'https://img14.360buyimg.com/jdcms/s150x150_jfs/t1/210904/11/28625/55846/636f9153E856e56c2/fe0dfff034791ec5.jpg',
      "https://img10.360buyimg.com/jdcms/s150x150_jfs/t1/118726/32/30639/163714/635c9270Ee0055533/5405dba89f03a786.jpg"
    ],
    [
      "京东直播",
      "",
      'https://img14.360buyimg.com/jdcms/s150x150_jfs/t1/210904/11/28625/55846/636f9153E856e56c2/fe0dfff034791ec5.jpg',
      "https://img10.360buyimg.com/jdcms/s150x150_jfs/t1/118726/32/30639/163714/635c9270Ee0055533/5405dba89f03a786.jpg"
    ],
    [
      "新品首发",
      "发现好货",
      'https://img14.360buyimg.com/jdcms/s150x150_jfs/t1/210904/11/28625/55846/636f9153E856e56c2/fe0dfff034791ec5.jpg',
      "https://img10.360buyimg.com/jdcms/s150x150_jfs/t1/118726/32/30639/163714/635c9270Ee0055533/5405dba89f03a786.jpg"
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: moduleContent.length,
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.6 / 1,
      ),
      itemBuilder: (context, index) {
        return ModuleTabGenerate(
          mainTitle: moduleContent[index][0],
          subTitle: moduleContent[index][1],
          imageName2: moduleContent[index][2],
          imageName1: moduleContent[index][3],
        );
      },
    );
  }
}

class ModuleTabGenerate extends StatelessWidget {
  const ModuleTabGenerate(
      {super.key,
      required this.mainTitle,
      required this.subTitle,
      required this.imageName1,
      required this.imageName2});

  final String mainTitle;
  final String subTitle;
  final String imageName1;
  final String imageName2;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 3, right: 3),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(top: 5, bottom: 3, left: 0),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 253, 229, 227), Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
                  child: Row(children: [
                    Padding(
                      padding: EdgeInsets.only(right: 45),
                      child: Text(mainTitle,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Text(subTitle,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: NetworkImage(imageName1),
                    width: 80,
                    height: 80,
                  ),
                  Image(
                    image: NetworkImage(imageName2),
                    width: 80,
                    height: 80,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
