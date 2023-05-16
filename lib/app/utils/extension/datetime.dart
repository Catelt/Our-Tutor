import 'package:intl/intl.dart';

import '../../services/user_prefs.dart';

class XDateFormat {
  final basic = DateFormat('yyyy-MM-dd HH:mm', UserPrefs.I.getLocale());
  final date = DateFormat('EEE, d MMM yyyy', UserPrefs.I.getLocale());
  final time = DateFormat('HH:mm', UserPrefs.I.getLocale());
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

  String get toStringDate {
    return "${this.year}-${this.month.toString().padLeft(2, "0")}-${this.day.toString().padLeft(2, "0")}";
  }

  bool isSameDate(DateTime other) {
    return this.year == other.year &&
        this.month == other.month &&
        this.day == other.day;
  }

  DateTime get getBeginDate {
    return DateTime(this.year, this.month, this.day, 0, 0);
  }

  DateTime get getEndDate {
    return DateTime(this.year, this.month, this.day, 23, 59);
  }
}
