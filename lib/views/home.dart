import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:demo/network/webservices.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('titles.home'.tr(), style: Theme.of(context).appBarTheme.textTheme.headline4),
      ),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('titles.navigate'.tr(), style: Theme.of(context).appBarTheme.textTheme.headline4),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Industies",
                  style: TextStyle(
                    fontSize: 14.0,
                  )),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/industry',
                  arguments: "Third Page",
                );
              },
            ),
            ListTile(
              title: Text("Users",
                  style: TextStyle(
                    fontSize: 14.0,
                  )),
              onTap: () {
                Navigator.pushNamed(context, '/users');
              },
            ),
            ListTile(
              title: Text("Add Users",
                  style: TextStyle(
                    fontSize: 14.0,
                  )),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Logout",
                  style: TextStyle(
                    fontSize: 14.0,
                  )),
              onTap: () async {
                var res = await logout(context);
                if (res) {
                  Navigator.pushNamed(context, '/login');
      
                } else {
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
      // body: Center(
      //     child: Container(
      //   padding: EdgeInsets.only(top: 55),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: <Widget>[
      //       Container(
      //         padding: EdgeInsets.only(top: 15, bottom: 50),
      //         child: Text(
      //           'Home',
      //         ),
      //       ),
      //       FlatButton(
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(18.0),
      //             side: BorderSide(color: Colors.blue)),
      //         color: Colors.white,
      //         textColor: Colors.blue,
      //         padding: EdgeInsets.all(8.0),
      //         onPressed: () {
      //           Navigator.pushNamed(context, '/users');
      //         },
      //         child: Text(
      //           "Users",
      //           style: TextStyle(
      //             fontSize: 14.0,
      //           ),
      //         ),
      //       ),
      //       FlatButton(
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(18.0),
      //             side: BorderSide(color: Colors.blue)),
      //         color: Colors.white,
      //         textColor: Colors.blue,
      //         padding: EdgeInsets.all(8.0),
      //         onPressed: () {
      //           Navigator.of(context).pushNamed(
      //             '/profile',
      //             arguments:
      //                 "Second Page", //This is really importan. Here you should pass every parameter as arguments
      //           );
      //         },
      //         child: Text(
      //           "Profile",
      //           style: TextStyle(
      //             fontSize: 14.0,
      //           ),
      //         ),
      //       ),
      //       FlatButton(
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(18.0),
      //             side: BorderSide(color: Colors.blue)),
      //         color: Colors.white,
      //         textColor: Colors.blue,
      //         padding: EdgeInsets.all(8.0),
      //         onPressed: () {
      //           Navigator.of(context).pushNamed(
      //             '/industry',
      //             arguments:
      //                 "Third Page", //This is really importan. Here you should pass every parameter as arguments
      //           );
      //         },
      //         child: Text(
      //           "Industry",
      //           style: TextStyle(
      //             fontSize: 14.0,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // )),
    );
  }
}
