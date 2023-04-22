import 'package:flutter/material.dart';
import '../../../routing/app_routing.dart';

class HomeNavigationItem {
  HomeNavigationItem(
      {required this.route,
      required this.path,
      required this.icon,
      required this.selectedIcon,
      required this.tooltip,
      required this.label,
      required this.view});

  final AppRoute route;
  String path;
  String icon;
  String selectedIcon;
  String tooltip;
  String label;
  Widget view;
}
