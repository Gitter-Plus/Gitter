import 'package:flutter/material.dart';

import 'package:gitter/constants.dart';
import 'package:gitter/menu.dart';
import 'package:gitter/post.dart';

void main() => runApp(Gitter());

class Gitter extends StatelessWidget {
  Widget build(BuildContext context) => MaterialApp(
    home: Home(),
  );
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static Widget divider(double height) => Container(
    width: 1.0,
    height: height,
    color: GitterColors.divider
  );

  Widget build(BuildContext context) => Scaffold(
    backgroundColor: GitterColors.background,
    body: Column(
      children: <Widget>[
        Menu(),
        Row(
          children: <Widget>[
            Post(),
            divider(MediaQuery.of(context).size.height - menuHeight),
          ],
        ),
      ],
    ),
  );
}
