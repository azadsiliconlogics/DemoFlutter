import 'package:demo/views/user_card.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> users = ["Kamal Perera", "Nimal Dissanayaka", "Saman De Silva", "Sunil Mendis", "Shehan Gunawardana", "Sudath Nishantha"];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test app", style: Theme.of(context).appBarTheme.textTheme.headline4),
      ),
      body: ListView.separated(
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return userItem(context, users[index]);
          },
          separatorBuilder: (BuildContext context, index) {
            return Divider(
              height: 2.0,
              color: Colors.transparent,
            );
          }),
    );
  }
}
