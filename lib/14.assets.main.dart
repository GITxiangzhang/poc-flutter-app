import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '页面跳转返回数据',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text('找SSS')),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

// 跳转button
class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return RaisedButton(
      onPressed: (){
        _navigateToSSS(context);
      },
      child: Text('找SSS'),
    );
  }

  _navigateToSSS(BuildContext context) async {
    final result = await Navigator.push(context, MaterialPageRoute(builder: (context)=>SSS())); 
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class SSS extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text('我是SSS')),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child:Text('我是大S'),
              onPressed:(){
                Navigator.pop(context,'大S');
              },
            ),
            RaisedButton(
              child: Text('我是小S'),
              onPressed: (){
                Navigator.pop(context,'小S');
              },
            ),
            Container(
              child: Image.asset('images/test.png'),
            ),
          ],
        ),
      ),
    );
  }
}