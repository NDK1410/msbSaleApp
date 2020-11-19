import 'package:flutter/material.dart';

//class HomePage extends StatefulWidget {
//  @override
//  _HomePageState createState() => _HomePageState();
//}
//
//class _HomePageState extends State<HomePage> {
//  int _selectedIndex = 0;
//  static const TextStyle optionStyle =
//      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//  static const List<Widget> _widgetOptions = <Widget>[
//    Text(
//      'Index 0: Home',
//      style: optionStyle,
//    ),
//    Text(
//      'Index 1: List',
//      style: optionStyle,
//    ),
//    Text(
//      'Index 2: Information',
//      style: optionStyle,
//    ),
//  ];
//
//  void _onItemTapped(int index) {
//    setState(() {
//      _selectedIndex = index;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        centerTitle: true,
//        title: Text('HomePage'),
//      ),
//      drawer: Drawer(
//        child: Container(
//          height: 10.0,
//          child: ListView(
//            children: const <Widget>[
//              DrawerHeader(
//                decoration: BoxDecoration(
//                  color: Colors.black87,
//                ),
//                child: Text(
//                  'Drawer Header',
//                  style: TextStyle(
//                    color: Colors.amberAccent,
//                    fontSize: 18,
//                  ),
//                ),
//              ),
//              ListTile(
//                leading: Icon(Icons.home),
//                title: Text('Home'),
//              ),
//              ListTile(
//                leading: Icon(Icons.list),
//                title: Text('List'),
//              ),
//              ListTile(
//                leading: Icon(Icons.info_outline),
//                title: Text('Information'),
//              ),
//              ListTile(
//                leading: Icon(Icons.assignment_return),
//                title: Text('Sign Out'),
//              ),
//            ],
//          ),
//        ),
//      ),
//      body: new Center(child: _widgetOptions.elementAt(_selectedIndex)),
//      bottomNavigationBar: BottomNavigationBar(
//        items: const <BottomNavigationBarItem>[
//          BottomNavigationBarItem(
//            icon: Icon(Icons.home),
//            title: Text("Home"),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.list),
//            title: Text("List"),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.info_outline),
//            title: Text("Information"),
//          ),
//        ],
//        currentIndex: _selectedIndex,
//        selectedItemColor: Colors.amber[800],
//        onTap: _onItemTapped,
//      ),
//    );
//  }
//}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Hello World')),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          shape: CircularNotchedRectangle(),
          child: Container(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.home, size: 40.0, color: Colors.white),
                    Icon(Icons.school, size: 40.0, color: Colors.white),
                    SizedBox.shrink(),
                    Icon(Icons.business_center,
                        size: 40.0, color: Colors.white),
                    Icon(Icons.contact_phone, size: 40.0, color: Colors.white)
                  ],
                ),
              ))),
    );
  }
}
