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

    var avatorImageAsset = new AssetImage("assets/images/avator.jpg");
    var avator = new Image(
      image: avatorImageAsset,
      height: 200,
      width: 160,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: Theme.of(context).appBarTheme.textTheme.headline4),
      ),
      body: Column(
        
        children: <Widget>[

          Container(
            padding: EdgeInsets.all(10),
            child: avator,
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Text('email'.tr()),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Text('password'.tr()),
          ),

          Container(
            margin: EdgeInsets.all(10),
          )

        ],
      ),
    );
  }
}
