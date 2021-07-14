import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatefulWidget {
  @override
  _MyStatelessWidgetState createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.black26,
            labelType: NavigationRailLabelType.all,
            destinations: [
            NavigationRailDestination(
              icon: Icon(
                Icons.wifi,
                color: Colors.red,
              ),
              label: Text("wifi"),
              selectedIcon: Icon(
                Icons.wifi,
                color: Colors.blue,
              ),
            ),
            NavigationRailDestination(
              icon: Icon(
                Icons.camera,
                color: Colors.red,
              ),
              label: Text("camera"),
              selectedIcon: Icon(
                Icons.camera,
                color: Colors.blue,
              ),
            ),
          ], selectedIndex: _selectedIndex,

          onDestinationSelected: (val){

            setState(() {
              _selectedIndex = val;
            });
          },

          ),


        ],
      ),
    );
  }
}
