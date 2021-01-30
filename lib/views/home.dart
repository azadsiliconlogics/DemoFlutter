import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: Theme.of(context).appBarTheme.textTheme.headline4),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Center(
              child: Container(
            padding: EdgeInsets.all(10),
            child: new Image(
              image: new AssetImage("assets/images/avator.jpg"),
              height: 200,
              width: 160,
            ),
          )),

          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text('email'.tr()),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'email'.tr(),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text('password'.tr()),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'password'.tr(),
              ),
            ),
          ),

          Center(
              child: RaisedButton(
            color: Colors.blue,
            onPressed: () {},
            child: Text('login'.tr(), style: TextStyle(fontSize: 20)),
          )),
          
        ],
      ),
    );
  }
}
