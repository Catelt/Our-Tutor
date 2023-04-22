import 'package:flutter/material.dart';
import '../../common_widgets/svg_widget.dart';
import '../../constants/app_size.dart';

class CustomNavigationItem extends BottomNavigationBarItem {
  CustomNavigationItem({
    required String asset,
    required String title,
    Color? color,
  }) : super(
            label: title,
            icon: SvgWidget(
              assetName: asset,
              color: color,
              size: Sizes.p24,
            ));
}
