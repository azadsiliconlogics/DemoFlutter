import 'package:flutter/material.dart';

Container userItem(BuildContext context, user) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
      height: height / 6,
      margin: EdgeInsets.all(15),
      child: Card(
        child: GestureDetector(
          onTap: () => print('User Clicked**********'),
          child: Row(children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 0, left: 0, right: 0),
                child: Image.asset(
                  'assets/images/avator.jpg',
                  height: height / 6,
                  width: width / 3,
                  fit: BoxFit.fill,
                )),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    user,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    'No 2, Hill St, Kandy.',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              ],
            )
          ]),
        ),
      ));
}
