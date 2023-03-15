import 'package:flutter/material.dart';
import 'package:our_tutor/app/common_widgets/svg_widget.dart';
import 'package:our_tutor/app/constants/app_size.dart';

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
