import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ! 卡片组合布局

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
        child: Column(
      children: <Widget>[
        ListTile(
          title: Text(
            '我是整个公司最靓的仔',
            style: TextStyle(
              color: Colors.purpleAccent,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text('电话联系:15172510521'),
          leading: Icon(
            Icons.verified_user,
            color: Colors.purpleAccent,
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            '我是整个公司最靓的仔',
            style: TextStyle(
              color: Colors.purpleAccent,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text('电话联系:15172510521'),
          leading: Icon(
            Icons.verified_user,
            color: Colors.purpleAccent,
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            '我是整个公司最靓的仔',
            style: TextStyle(
              color: Colors.purpleAccent,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text('电话联系:15172510521'),
          leading: Icon(
            Icons.verified_user,
            color: Colors.purpleAccent,
          ),
        ),
        Divider(),
      ],
    ));

    return MaterialApp(
      title: 'Card widget',
      // !灵活水平布局
      home: Scaffold(
          appBar: AppBar(
            title: Text('Card布局'),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: card,
          )),
    );
    // ! 灵活与不灵活混用
    // ! 只要把 Expanded 前缀去掉就可以
  }
}
