import 'package:intl/intl.dart';

import '../../services/user_prefs.dart';

class XDateFormat {
  final basic = DateFormat('yyyy-MM-dd HH:mm', UserPrefs.I.getLocale());
  final date = DateFormat('EEE, d MMM yyyy', UserPrefs.I.getLocale());
}

extension DateTimeExtension on DateTime {
  String get timeDistance {
    final distance = this.difference(DateTime.now()).abs();
    if (distance.inMinutes < 60) {
      return "${distance.inMinutes} minutes ago";
    }
    if (distance.inHours < 24) {
      return "${distance.inHours} hours ago";
    }
    return XDateFormat().basic.format(this);
  }
}
