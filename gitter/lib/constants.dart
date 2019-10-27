import 'package:flutter/material.dart';

class GitterColors {
  static final Color background = Colors.blueGrey[800];
  static final Color theme      = Colors.cyanAccent[400];
  static final Color menu       = Colors.grey[850];
  static final Color searchBar  = Colors.grey[700];
  static final Color textField  = Colors.blueGrey[600];
  static final Color hintText   = Colors.grey;
  static final Color divider    = Colors.grey[700];
}

class GitterStyles {
  static final TextStyle searchBar = TextStyle(
    color: GitterColors.hintText,
    fontSize: 15,
  );
  static final TextStyle menu      = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle language  = TextStyle(
    color: Colors.black,
    fontSize: 20,
  );
  static final TextStyle post      = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
}
