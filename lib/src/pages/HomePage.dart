import 'package:flutter/material.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:msbSaleApp/src/pages/AboutPage.dart';
import 'package:msbSaleApp/src/pages/SettingPage.dart';
import 'package:msbSaleApp/src/pages/HomeListPage.dart';
import 'package:msbSaleApp/src/pages/InformationPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State {
  int _selectedIndex = 0;

  List _listScreens = [
    HomeListPage(),
    AboutPage(),
    InformationPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MSB Application'),
      ),
      drawer: Drawer(
        child: Container(
          height: 100.0,
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('List'),
              ),
              ListTile(
                leading: Icon(Icons.info_outline),
                title: Text('Information'),
              ),
              ListTile(
                leading: Icon(Icons.assignment_return),
                title: Text('Sign Out'),
              ),
            ],
          ),
        ),
      ),
      body: _listScreens[_selectedIndex],
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.blue,
          selectedItemBorderColor: Colors.white,
          selectedItemBackgroundColor: Colors.blue,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.white,
        ),
        selectedIndex: _selectedIndex,
        onSelectTab: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: Icons.category,
            label: 'Category',
          ),
          FFNavigationBarItem(
            iconData: Icons.info,
            label: 'Information',
          ),
          FFNavigationBarItem(
            iconData: Icons.settings,
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
