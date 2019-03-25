import 'package:flutter/material.dart';

// 生产一个带值的List变量，直接使用List中的generate方法进行生产List里的元素。
// generate 方法传递两个参数，一个是生成的个数，第二个是方法
void main() => runApp(MyApp(
  items:new List<String>.generate(100,(i)=>'item $i')
));

// 除了Key，增加一个必传参数，@required 必传。
// :super 如果父类没有无名无参数的默认构造函数，则子类必须手动调用一个父类构造函数。
class MyApp extends StatelessWidget {

  final List<String> items;
  MyApp({Key key,@required this.items}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView widget',
      home: Scaffold(
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
          return new ListTile(
            title: new Text('${items[index]}'),
          );
         },
        ),
      ),
    );
  }
}
