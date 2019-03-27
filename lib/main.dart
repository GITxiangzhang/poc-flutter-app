import 'package:flutter/material.dart';
import './compontents/bottom_nav.dart';
import 'package:amap_location/amap_location.dart';

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
        home: BottomNavigationWidget());
  }
}
