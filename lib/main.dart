import 'dart:html';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sample Materialapp",
      theme: ThemeData(
        primarySwatch:Colors.red
      ),
      home:HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("curved navigationbar",
      style: TextStyle(fontSize: 30,
      fontWeight: FontWeight.bold),),
    ),
    drawer: Drawer(
      child: ListView(
        children:const <Widget> [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black45
            ),
            child: Text("Login Parts only ",
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold),),
             ),
        ],
        
      ),
    ),
    bottomNavigationBar: CurvedNavigationBar(
      index: 1,
      height: 50,
    backgroundColor: Colors.black45,
    items: <Widget>[
      Icon(Icons.add, size: 30),
      Icon(Icons.list, size: 30),
      Icon(Icons.compare_arrows, size: 30),
      Icon(Icons.access_alarms,size: 30),
      Icon(Icons.add_a_photo,size: 30),
      Icon(Icons.upload_file,size: 30,)
    ],
    animationDuration: Duration(milliseconds: 400),
    animationCurve: Curves.linearToEaseOut,
    onTap: (index) {
    },
  ),
  body: Container(
    width: 500,
    height: 500,
    color: Colors.redAccent,
    child: Text("this is curved Navigationbar",
    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
  ),
    );
  }
}

