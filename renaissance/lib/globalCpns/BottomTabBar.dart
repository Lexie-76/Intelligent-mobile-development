import 'package:flutter/material.dart';

class BottomTabBarItem extends BottomNavigationBarItem{
  BottomTabBarItem(String icon, String icon_active, String title) :
        super(
          icon: Image.network(icon,width: 30),
          activeIcon: Image.network(icon_active,width: 30),
          label: title
      );
}