
import 'package:flutter/cupertino.dart';

class DrawerItem {
  String name;
  IconData icon;
  Function onTap;
  DrawerItem(this.name, this.icon, this.onTap);
}