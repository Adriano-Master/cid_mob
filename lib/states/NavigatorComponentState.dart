import 'package:flutter/material.dart';

class NavigatorComponentState extends ChangeNotifier{

  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[];

  NavigatorComponentState(this._widgetOptions);

  Widget get selectedWidget => _widgetOptions[_selectedIndex];

  int get selectedIndex => _selectedIndex;

  void selectIndex(int index){
    _selectedIndex = index;
    notifyListeners();
  }

}