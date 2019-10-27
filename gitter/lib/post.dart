import 'package:flutter/material.dart';

import 'package:gitter/constants.dart';

const _margin        = 20.0;
const _postWidth     = 500.0;
const _borderRadius  = 5.0;
const _commentHeight = 300.0;
const _linkHeight    = 100.0;

class Post extends StatefulWidget {
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  final Widget _marginBox = Container(height: _margin);

  final Widget _post = Row(
    children: <Widget>[
      Text(
        'Post',
        style: GitterStyles.post,
      ),
    ],
  );

  final Widget _comment = Container(
    height: _commentHeight,
    decoration: BoxDecoration(
      color:        GitterColors.textField,
      borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
    ),
  );

  final Widget _link = Container(
    height: _linkHeight,
    decoration: BoxDecoration(
      color:        GitterColors.textField,
      borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
    ),
  );

  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.symmetric(horizontal: _margin),
    width: _postWidth,
    child: Column(
      children: <Widget>[
        _post,
        _marginBox,
        _comment,
        _marginBox,
        _link,
      ],
    ),
  );
}
