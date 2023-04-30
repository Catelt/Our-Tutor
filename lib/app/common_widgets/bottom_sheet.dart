import 'package:flutter/material.dart';

import '../constants/app_size.dart';

class XBottomSheet {
  static void show(BuildContext context,
      {required Widget child, bool isDismissible = true}) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(Sizes.p24),
        ),
      ),
      isDismissible: isDismissible,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: child,
      ),
    );
  }
}
