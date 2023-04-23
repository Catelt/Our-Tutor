import 'package:flutter/material.dart';

import '../constants/app_size.dart';
import '../routing/coordinator.dart';

class DefaultAppBar {
  static Widget defaultLeading({void Function()? onPressed}) {
    return IconButton(
      icon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p8),
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      onPressed: onPressed ??
          () {
            print("Hellol");
            Navigator.of(XCoordinator().context).pop();
          },
    );
  }
}
