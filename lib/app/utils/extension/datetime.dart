import 'package:intl/intl.dart';

class XDateFormat {
  static final basic = DateFormat('yyyy-MM-dd HH:mm');
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
    return XDateFormat.basic.format(this);
  }
}
