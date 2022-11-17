import 'package:flutter/material.dart';

const List BANNER_LIST = [
  'assets/images/banner/banner_jd_1.jpg',
  'assets/images/banner/banner_jd_2.jpg',
  'assets/images/banner/banner_jd_3.jpg',
  'assets/images/banner/banner_jd_4.jpg',
  'assets/images/banner/banner_jd_5.jpg',
  'assets/images/banner/banner_jd_6.jpg',
  'assets/images/banner/banner_jd_7.jpg',
  'assets/images/banner/banner_jd_8.jpg',
];

const List TOOLS_LIST1 = [
  {'title': '京东超市', 'icon': 'lib/assets/images/icon/icon_a_1.png'},
  {'title': '京东电器', 'icon': 'lib/assets/images/icon/icon_a_2.png'},
  {'title': '潮流服饰', 'icon': 'lib/assets/images/icon/icon_a_3.png'},
  {'title': '免费水果', 'icon': 'lib/assets/images/icon/icon_a_4.png'},
  {'title': '京东到家', 'icon': 'lib/assets/images/icon/icon_a_5.png'},
  {'title': '生活服务', 'icon': 'lib/assets/images/icon/icon_a_6.png'},
  {'title': '领京豆', 'icon': 'lib/assets/images/icon/icon_a_7.png'},
  {'title': '领劵', 'icon': 'lib/assets/images/icon/icon_a_8.png'},
  {'title': '借钱', 'icon': 'lib/assets/images/icon/icon_a_9.png'},
  {'title': 'PLUS', 'icon': 'lib/assets/images/icon/icon_a_10.png'},
];

const List TOOLS_LIST2 = [
  {'title': '京东国际', 'icon': 'lib/assets/images/icon/icon_b_1.png'},
  {'title': '京东拍卖', 'icon': 'lib/assets/images/icon/icon_b_2.png'},
  {'title': '唯品会', 'icon': 'lib/assets/images/icon/icon_b_3.png'},
  {'title': '沃尔玛', 'icon': 'lib/assets/images/icon/icon_b_4.png'},
  {'title': '京东旅行', 'icon': 'lib/assets/images/icon/icon_b_5.png'},
  {'title': '看病购药', 'icon': 'lib/assets/images/icon/icon_b_6.png'},
  {'title': '拍拍二手', 'icon': 'lib/assets/images/icon/icon_b_7.png'},
  {'title': '京东生鲜', 'icon': 'lib/assets/images/icon/icon_b_9.png'},
  {'title': '爱回收', 'icon': 'lib/assets/images/icon/icon_b_9.png'},
  {'title': '更多频道', 'icon': 'lib/assets/images/icon/icon_b_10.png'},
];

const List PRODUCT_LIST = [
  {
    'name': 'Apple AirPods 配充电盒 Apple蓝牙耳机 适用iPhone/iPad/Apple Watch',
    'src': 'lib/assets/images/product/product_1.jpg',
    'price': '1199'
  },
  {
    'name': 'Apple iPhone 12 (A2404) 128GB 白色 支持移动联通电信5G 双卡双待手机',
    'src': 'lib/assets/images/product/product_2.jpg',
    'price': '5499'
  },
  {
    'name': 'Apple 妙控键盘 - 中文 (拼音) 适用MacBook 无线键盘',
    'src': 'lib/assets/images/product/product_3.jpg',
    'price': '699'
  },
  {
    'name':
        'Apple 2019年新款 Pro Display XDR 32 英寸视网膜 6K Mac电脑 高对比度 广色域 显示屏 显示器  - 标准玻璃',
    'src': 'lib/assets/images/product/product_4.jpg',
    'price': '39999'
  },
  {
    'name': 'ikbc经典系列机械键盘无线游戏樱桃cherry87轴电脑外设笔记本数字电竞办公有线自营外接 C210深空灰有线108键 茶轴',
    'src': 'lib/assets/images/product/product_5.jpg',
    'price': '399'
  },
  {
    'name':
        'Apple 2020款 MacBook Pro 13.3【带触控栏】十代i5 16G 512G 2.0GHz 深空灰 笔记本电脑 轻薄本 MWP42CH/A',
    'src': 'lib/assets/images/product/product_6.jpg',
    'price': '10088'
  },
  {
    'name': 'ikbc经典系列机械键盘无线游戏樱桃cherry87轴电脑外设笔记本数字电竞办公有线自营外接 C210灰有线97键 茶轴',
    'src': 'lib/assets/images/product/product_7.jpg',
    'price': '499'
  },
  {
    'name': 'ikbc经典系列机械键盘无线游戏樱桃cherry87轴电脑外设笔记本数字电竞办公有线自营外接 C210深空灰有线108键 茶轴',
    'src': 'lib/assets/images/product/product_8.jpg',
    'price': '599'
  },
];

const List MENU_LIST = [
  '热门推荐',
  '手机数码',
  '电脑办公',
  '家用电器',
  '美妆护肤',
  '个人清洁',
  '汽车生活',
  '京东超市',
  '男装',
  '女装',
  '男鞋',
  '女鞋',
  '母婴童装',
  '图书影像',
  '运动户外',
  '食品生鲜',
  '酒水饮料',
  '家具家装',
  '家具厨具',
  '箱包手袋',
  '钟表珠宝',
  '玩具乐器',
  '奢侈品',
  '京东国际',
  '工业品',
];

const List MENU_PRODUCT_LIST = [
  {
    'title': '常用分类',
    'children': [
      {'name': '耳机', 'src': 'lib/assets/images/product/product_1.jpg'},
      {'name': '手机', 'src': 'lib/assets/images/product/product_2.jpg'},
      {'name': '键盘', 'src': 'lib/assets/images/product/product_3.jpg'},
      {'name': '显示器', 'src': 'lib/assets/images/product/product_4.jpg'},
      {'name': '机械键盘', 'src': 'lib/assets/images/product/product_5.jpg'},
      {'name': '笔记本', 'src': 'lib/assets/images/product/product_6.jpg'},
    ]
  },
  {
    'title': '电脑办公',
    'children': [
      {'name': '耳机', 'src': 'lib/assets/images/product/product_1.jpg'},
      {'name': '手机', 'src': 'lib/assets/images/product/product_2.jpg'},
      {'name': '键盘', 'src': 'lib/assets/images/product/product_3.jpg'},
      {'name': '显示器', 'src': 'lib/assets/images/product/product_4.jpg'},
      {'name': '机械键盘', 'src': 'lib/assets/images/product/product_5.jpg'},
      {'name': '笔记本', 'src': 'lib/assets/images/product/product_6.jpg'},
    ]
  },
  {
    'title': '热门分类',
    'children': [
      {'name': '耳机', 'src': 'lib/assets/images/product/product_1.jpg'},
      {'name': '手机', 'src': 'lib/assets/images/product/product_2.jpg'},
      {'name': '键盘', 'src': 'lib/assets/images/product/product_3.jpg'},
      {'name': '显示器', 'src': 'lib/assets/images/product/product_4.jpg'},
      {'name': '机械键盘', 'src': 'lib/assets/images/product/product_5.jpg'},
      {'name': '笔记本', 'src': 'lib/assets/images/product/product_6.jpg'},
    ]
  },
];

List cartProductList = [
  {
    'title': 'Apple 产品京东自营旗舰店',
    'isSelected': false,
    'children': [
      {
        'id': 1,
        'name': 'Apple AirPods 配充电盒 Apple蓝牙耳机 适用iPhone/iPad/Apple Watch',
        'price': 1299,
        'num': 1,
        'src': 'lib/assets/images/product/product_1.jpg',
        'isSelected': false
      },
      {
        'id': 2,
        'name': 'Apple iPhone 12 (A2404) 128GB 白色 支持移动联通电信5G 双卡双待手机',
        'price': 5999,
        'num': 2,
        'src': 'lib/assets/images/product/product_2.jpg',
        'isSelected': false
      },
      {
        'id': 3,
        'name': 'Apple 妙控键盘 - 中文 (拼音) 适用MacBook 无线键盘',
        'price': 699,
        'num': 1,
        'src': 'lib/assets/images/product/product_3.jpg',
        'isSelected': false
      },
      {
        'id': 4,
        'name':
            'Apple 2019年新款 Pro Display XDR 32 英寸视网膜 6K Mac电脑 高对比度 广色域 显示屏 显示器  - 标准玻璃',
        'price': 39999,
        'num': 1,
        'src': 'lib/assets/images/product/product_4.jpg',
        'isSelected': false
      },
    ]
  },
  {
    'title': 'DJI 大疆创新京东自营旗舰店',
    'isSelected': false,
    'children': [
      {
        'id': 5,
        'name':
            'ikbc87机械键盘游戏樱桃cherry轴电脑外设笔记本有线数字办公自营C104/W200无线可选 C104有线104键 红轴',
        'price': 399,
        'num': 1,
        'src': 'lib/assets/images/product/product_5.jpg',
        'isSelected': false
      },
      {
        'id': 6,
        'name':
            'Apple 2020款 MacBook Pro 13.3【带触控栏】十代i5 16G 512G 2.0GHz 深空灰 笔记本电脑 轻薄本 MWP42CH/A',
        'price': 10888,
        'num': 1,
        'src': 'lib/assets/images/product/product_6.jpg',
        'isSelected': false
      },
    ]
  },
  {
    'title': 'ikbc 京东自营旗舰店',
    'isSelected': false,
    'children': [
      {
        'id': 7,
        'name':
            'ikbc87机械键盘游戏樱桃cherry轴电脑外设笔记本有线数字办公自营C104/W200无线可选 C104有线104键 红轴',
        'price': 499,
        'num': 1,
        'src': 'lib/assets/images/product/product_7.jpg',
        'isSelected': false
      },
      {
        'id': 8,
        'name':
            'ikbc经典系列机械键盘无线游戏樱桃cherry87轴电脑外设笔记本数字电竞办公有线自营外接 C210深空灰有线108键 茶轴',
        'price': 599,
        'num': 1,
        'src': 'lib/assets/images/product/product_8.jpg',
        'isSelected': false
      },
    ]
  },
];

const List MESSAGE_LIST = [
  {
    'color': Color(0xFF4BDABC),
    'user': '服务通知',
    'message': '您购买的【罗技M330静音...】，升级延保享免费维修，免费换新！',
    'date': '2021/6/27'
  },
  {
    'color': Color(0xFFFB323F),
    'user': '优惠促销',
    'message': '您购买的【罗技M330静音...】，升级延保享免费维修，免费换新！',
    'date': '2021/6/27'
  },
  {
    'color': Color(0xFF2FA5FF),
    'user': '店铺头条',
    'message': '您购买的【罗技M330静音...】，升级延保享免费维修，免费换新！',
    'date': '2021/6/27'
  },
  {
    'color': Color(0xFFFF5C02),
    'user': 'APP客服',
    'message': '您购买的【罗技M330静音...】，升级延保享免费维修，免费换新！',
    'date': '2021/6/27'
  },
  {
    'color': Color(0xFF7CD018),
    'user': '云秘书',
    'message': '您购买的【罗技M330静音...】，升级延保享免费维修，免费换新！',
    'date': '2021/6/27'
  },
  {
    'color': Color(0xFFFE9E01),
    'user': '包大人',
    'message': '您购买的【罗技M330静音...】，升级延保享免费维修，免费换新！',
    'date': '2021/6/27'
  },
  {
    'color': Color(0xFF00A6D6),
    'user': '系统通知',
    'message': '您购买的【罗技M330静音...】，升级延保享免费维修，免费换新！',
    'date': '2021/6/27'
  },
  {
    'color': Color(0xFFFD8996),
    'user': '圈子',
    'message': '您购买的【罗技M330静音...】，升级延保享免费维修，免费换新！',
    'date': '2021/6/27'
  },
  {
    'color': Color(0xFFFF5C02),
    'user': '活动通知',
    'message': '您购买的【罗技M330静音...】，升级延保享免费维修，免费换新！',
    'date': '2021/6/27'
  },
];

List commentList1 = [
  {
    'title': '中小鱼',
    'avatar':
        'https://images.pexels.com/photos/303159/pexels-photo-303159.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'date': '2021-6-29',
    'comment': '人生只有两次幸运就好,一次遇见你,一次走到底,爱不会缺席,但会姗姗来迟,晚点遇见你,余生都是你,你在我心里暖暖的满满的',
    'children': [
      'https://images.unsplash.com/photo-1604252879330-a63fadf53b63?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1624651023175-1941544e2bd4?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM1fGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1624724585603-967eb2073e03?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM3fGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1624375147958-678d727cc0c4?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUxfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1624396969411-5244ea0dcce4?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUyfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1588243012335-877fc66de24c?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDkzfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
    ]
  },
  {
    'title': '笑很甜',
    'avatar':
        'https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'date': '2021-6-29',
    'comment':
        '有时候真的很喜欢你,很想和你在一起,有时候又真的很累很想放弃可是你偶尔的温柔总会让我觉得如果我放手了多可惜所以就为了一点不知迫存不存在的喜欢,等了好久',
    'children': [
      'https://images.unsplash.com/photo-1624542314940-f53ec62a195c?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3NjF8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1624644398071-667ed08bc888?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3NjN8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1624689546507-74b6733b57c9?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3OTB8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1601852688089-29116c298316?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEwfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1602320532743-2d326a26fc95?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDh8Ym84alFLVGFFMFl8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
    ]
  },
  {
    'title': '何小荷',
    'avatar':
        'https://images.pexels.com/photos/7406811/pexels-photo-7406811.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'date': '2021-6-29',
    'comment': '我刷着别人的故事看着别人的感情一遍又一遍，一个人又一个人，感觉真像我自己，我不配',
    'children': [
      'https://images.pexels.com/photos/7182073/pexels-photo-7182073.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      'https://images.pexels.com/photos/7084338/pexels-photo-7084338.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      'https://images.pexels.com/photos/7108242/pexels-photo-7108242.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      'https://images.pexels.com/photos/7185803/pexels-photo-7185803.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      'https://images.pexels.com/photos/7084219/pexels-photo-7084219.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    ]
  },
];

List commentList2 = [
  {
    'title': '中小鱼',
    'avatar':
        'https://images.pexels.com/photos/303159/pexels-photo-303159.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'date': '2021-6-29',
    'comment': '我的粉底呢 啊抹好了',
    'children': [
      'https://images.unsplash.com/photo-1625144779931-d442dd9fcb74?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1625036809284-382d5fcdb2bf?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1524758631624-e2822e304c36?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxNjl8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
    ]
  },
  {
    'title': '笑很甜',
    'avatar':
        'https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'date': '2021-6-29',
    'comment': '我的小可爱呢 啊正在看我的评论呢',
    'children': [
      'https://images.unsplash.com/photo-1624916888457-cd3eb62cc17e?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1624891533047-a95cbdac9a4f?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNzd8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1625149955435-5c7a73d046d0?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1625088775999-a0cc48ef6fa9?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1625111970819-5f32ac1885c3?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1Nnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
      'https://images.unsplash.com/photo-1625123628171-67518580f951?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMjl8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
    ]
  },
];
