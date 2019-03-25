import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ! 除了Key，增加一个必传参数，@required 必传。
// ! :super 如果父类没有无名无参数的默认构造函数，则子类必须手动调用一个父类构造函数。
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView widget',
      // home: Scaffold(
      //   body: GridView.count(
      //     padding: const EdgeInsets.all(100.0),
      //     crossAxisSpacing: 10.0, //网格之间的间距
      //     crossAxisCount: 3, // 网格列数，一行放置的网格数量
      //     children: <Widget>[
      //       const Text('我是'),
      //       const Text('这个'),
      //       const Text('世界'),
      //       const Text('最帅'),
      //       const Text('的人'),
      //       const Text('真的'),
      //     ],
      //   ),
      // ),
      home: Scaffold(
        body: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
              childAspectRatio: 0.7, // ! 宽高比，宽是高的多少倍。
            ),
            children: <Widget>[
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
                  fit: BoxFit.cover),
            ]),
      ),
    );
  }
}
