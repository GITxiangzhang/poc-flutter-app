import 'package:flutter/material.dart';
import './compontents/bottom_nav.dart';
import 'package:amap_location/amap_location.dart';
import 'util/InteractNative.dart';
// import './home.dart';
import 'pages/variable_screen.dart';

void main() => {
      AMapLocationClient.setApiKey('7c643109d6c50331e82d3dc15e400dea'),
      runApp(new MyApp())
    };

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter bottomNavigationBar',
        theme: ThemeData.light(),
        //注册路由表
        routes:{
        "pages/variable_screen":(context)=>VariableScreen(),
        } ,
        home: BottomNavigationWidget());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Page')),
      body: Center(
        child: new GestureDetector(
          onTap: () async {
            print('click');

            //安卓原生弹窗接口
            // InteractNative.goNativeWithValue(
            //         InteractNative.methodNames['showdialog'])
            //     .then((success) {
            //   print(success);
            // }).catchError((error) {
            //   print(error.toString());
            // });
            try {
              final result = await InteractNative.goNativeWithValue(
                  InteractNative.methodNames['showdialog']);
              print(result);
            } catch (e) {
              print(e.toString());
            }
          },
          child: Text('home页面'),
        ),
      ),
    );
  }
}
