import '../localization/localization_utils.dart';

enum MSortLevel {
  asc,
  desc;

  String get getName {
    switch (this) {
      case MSortLevel.asc:
        return S.text.sort_asc;
      case MSortLevel.desc:
        return S.text.sort_desc;
    }
  }

  static MSortLevel get(bool value) {
    if (value) {
      return MSortLevel.asc;
    }
    return MSortLevel.desc;
  }
}
