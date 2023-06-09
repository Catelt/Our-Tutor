import '../../gen/assets.gen.dart';
import '../network/model/national.dart';

final vn = National(
  id: 1,
  name: 'Việt Nam',
  code: "vi",
  imageUrl: Assets.iconNational.icVn.path,
);

final philip = National(
  id: 2,
  name: 'Philippines',
  code: "en-PH",
  imageUrl: Assets.iconNational.icPhilip.path,
);

final tai = National(
  id: 3,
  name: 'Taiwan',
  code: "zh",
  imageUrl: Assets.iconNational.icTaiwan.path,
);

final en = National(
  id: 4,
  name: 'English',
  code: "en",
  imageUrl: Assets.iconNational.icEn.path,
);

class XAppLanguage {
  static final languages = [vn, en];
  static National getLanguage(String? code) {
    return languages.firstWhere((e) => e.code == code,
        orElse: () => languages[0]);
  }
}

enum ENational {
  vietnam('vn'),
  philippines('PH'),
  taiwan('TW');

  const ENational(this.id);

  final String id;

  static National getNational(String id) {
    final data = ENational.values
        .firstWhere((e) => e.id == id, orElse: () => ENational.vietnam);
    switch (data) {
      case ENational.vietnam:
        return vn;
      case ENational.philippines:
        return philip;
      case ENational.taiwan:
        return tai;
    }
  }
}
