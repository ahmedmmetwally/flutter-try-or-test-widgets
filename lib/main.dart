import 'package:flutter/material.dart';
import 'package:test_widgets/view/drawer_view.dart';
import 'package:test_widgets/view/bottom_navigation_bar.dart';
import 'package:test_widgets/view/drop_down_button.dart';
import 'package:test_widgets/view/tapBar_vieww.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
     home:DrawerVieww(),
      routes: {
        TabBarVieww.routeTabBarVieww:(context)=>TabBarVieww(),
        BottomNavigationar.routeBottomNavigationar:(context)=>BottomNavigationar(),
        DropDownButtonn.routeDropDownButton:(context)=>DropDownButtonn(),
      },
    );
  }
}
