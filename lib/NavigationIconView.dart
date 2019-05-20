import 'package:flutter/material.dart';

class NavigationIconView {
  BottomNavigationBarItem item;
  AnimationController controller;

  NavigationIconView({Widget icon, Widget title, TickerProvider vsync}) {
    item = new BottomNavigationBarItem(icon: icon, title: title);
    controller=new AnimationController(vsync: vsync,duration:
    kThemeAnimationDuration
    );
  }
}
