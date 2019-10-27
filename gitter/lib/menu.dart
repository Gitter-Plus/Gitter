import 'package:flutter/material.dart';

import 'package:gitter/constants.dart';

const menuHeight   = 70.0;
const _borderRadius = 5.0;
const _menuMargin   = 30.0;
const _menuWidth    = 600.0;
const _searchWidth  = 300.0;
const _searchHeight = 30.0;

class Menu extends StatelessWidget {
  final Widget _search = Container(
    width:  _searchWidth,
    height: _searchHeight,
    decoration: BoxDecoration(
      color:        GitterColors.searchBar,
      borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
    ),
    child: Row(
      children: <Widget>[
        Container(
          width: 20,
        ),
        Text(
          'Search...',
          style: GitterStyles.searchBar,
        ),
      ],
    ),
  );

  final Widget _home = Container(
    child: Text(
      'Home',
      style: GitterStyles.menu,
    ),
  );

  final Widget _trend = Container(
    child: Text(
      'Trend',
      style: GitterStyles.menu,
    ),
  );

  final Widget _tagList = Container(
    child: Text(
      'Tags',
      style: GitterStyles.menu,
    ),
  );

  static Widget _language(String lang) => DropdownMenuItem<Widget>(
    child: Text(
      lang,
      style: GitterStyles.language,
    ),
  );

  final Widget _languageMenu = Container(
    child: DropdownButton(
      items: <DropdownMenuItem<Widget>>[
        _language('English'),
        _language('日本語'),
        _language('suomi'),
        _language('中文'),
        _language('русский'),
        _language('italiano'),
        _language('ภาษา ไทย'),
      ],
      onChanged: (value) {},
    ),
  );

  Widget build(BuildContext context) => Container(
    height: menuHeight,
    color:  GitterColors.menu,
    child:  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: _menuWidth,
          margin: EdgeInsets.only(left: _menuMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _search,
              _home,
              _trend,
              _tagList,
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: _menuMargin),
          child: _languageMenu,
        ),
      ],
    ),
  );
}
