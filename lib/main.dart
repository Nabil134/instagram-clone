import 'package:flutter/material.dart';
import 'home.dart';

void main() {
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
      debugShowCheckedModeBanner: false, //Removing Debug Banner
      theme:ThemeData(
        brightness: Brightness.light,
      ),//themedata
      home:Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
             BottomNavigationBarItem(
              
              icon:Icon(Icons.home,color: Colors.black,),
              title: Text(""),
            ),
           
             BottomNavigationBarItem(
              
              icon:Icon(Icons.search,color: Colors.black,),
              title: Text(""),
            ),
           BottomNavigationBarItem(
              
              icon:Icon(Icons.add_box,color: Colors.black,),
              title: Text(""),
            ),
           BottomNavigationBarItem(
              
              icon:Icon(Icons.favorite_border,color: Colors.black,),
              title: Text(""),
            ),
          
          BottomNavigationBarItem(
              
              icon:Icon(Icons.person,color: Colors.black,),
              title: Text(""),
            ),
          
          ],
        ),//BottomNavigatorBar
        body:Home1(),
      ),//Scaffold
    );//MaterialApp
  }
}