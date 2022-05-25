import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

var websites = [
  {"website": "Java Guide", "url": "https://javaguide.technologychannel.org/"},
  {"website": "Dramacool", "url": "https://www1.dramacool.fo/"},
  {"website": "W3School", "url": "https://www.w3schools.com/"},
  {"website": "Dart Language", "url": "https://dart.dev/guides/"},
  {"website": "Flowchart Maker", "url": "https://app.diagrams.net/"},
  {"website": "Youtube", "url": "https://www.youtube.com/"},
  {"website": "Wikipedia", "url": "https://en.wikipedia.org/"},
  {"website": "Facebook", "url": "https://www.facebook.com/login.php/"},
  {"website": "Google", "url": "https://www.google.com/"},
  {"website": "Instagram	", "url": "https://www.instagram.com/"},
  {"website": "uwatchfree	", "url": "https://uwatchfree.be/"},
  {"website": "Cricbuzz", "url": "https://www.cricbuzz.com/"}
];

class HomePage extends StatelessWidget {
  static String routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Website"),
      ),
      body: GridView.count(
          crossAxisCount: 3,
          children: websites
              .map((website) => RedBox(
                  website['website'].toString(), website['url'].toString()))
              .toList()),
      drawer: Drawer(
          child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.deepOrange, Colors.orangeAccent])),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("img/prp.png"),
                radius: 10,
              ),
              accountName: Text("Prakash Shrestha"),
              accountEmail: Text("Shresthap125@gmail.com")),
          ListTile(
            leading: const Icon(
              Icons.home,
              size: 35,
              color: Colors.pinkAccent,
            ),
            title: const Text("Favourite Website"),
            subtitle: const Text("I like to visit"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.close,
              size: 35,
              color: Colors.pinkAccent,
            ),
            title: const Text("Close"),
            subtitle: const Text("Close Drawer"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      )),
    );
  }
}

class RedBox extends StatelessWidget {
  final String title;
  final String url;
  RedBox(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 45, 226, 17),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            title,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ),
      ),
      onTap: () {
        launch(url);
      },
    );
  }
}
