import 'package:flutter/material.dart';
import './../pages/list_screen.dart';
import './../pages/web_screen.dart';
import './../pages/setting_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}
class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();
  @override
  void initState(){
    list
      ..add(ListScreen())
      ..add(WebScreen())
      ..add(SettingScreen());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: list[_currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         items: [
           BottomNavigationBarItem(
             icon:Icon(
               Icons.home,
               color:_bottomNavigationColor,
             ),
             title:Text(
               'List',
               style:TextStyle(color:_bottomNavigationColor)
             )
           ),
           BottomNavigationBarItem(
             icon:Icon(
               Icons.email,
               color:_bottomNavigationColor,
             ),
             title:Text(
               'Web',
               style:TextStyle(color:_bottomNavigationColor)
             )
           ),
           BottomNavigationBarItem(
             icon:Icon(
               Icons.pages,
               color:_bottomNavigationColor,
             ),
             title:Text(
               'Setting',
               style:TextStyle(color:_bottomNavigationColor)
             )
           ),
         ],
         currentIndex:_currentIndex,
         onTap:(int index){
           setState((){
             _currentIndex= index;
           });
         },
         type:BottomNavigationBarType.fixed
       ),
     );
  }
}