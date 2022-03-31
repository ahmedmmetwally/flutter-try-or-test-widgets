import 'package:flutter/material.dart';
import 'package:test_widgets/view/bottom_navigation_bar.dart';
import 'package:test_widgets/view/drop_down_button.dart';
import 'package:test_widgets/view/tapBar_vieww.dart';

class DrawerVieww extends StatelessWidget {
  static const routeDrawerVieww="/DrawerVieww";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Demo'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child:const Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('TabBarVieww'),
                onTap: ()=>Navigator.of(context).pushReplacementNamed(TabBarVieww.routeTabBarVieww),

            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: ()=>Navigator.of(context).pushReplacementNamed(BottomNavigationar.routeBottomNavigationar),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('DropDownButton'),
             onTap: ()=>Navigator.of(context).pushReplacementNamed(DropDownButtonn.routeDropDownButton),
            ),
          ],
        ),
      ),
    );
  }
}
