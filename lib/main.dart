// Create a Flutter Project To Open Your Favorites 7-10 Website
// Use-  GridView
// -  Drawer
// -  MAP

import 'package:favoritewebsites/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Favourite Website",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
