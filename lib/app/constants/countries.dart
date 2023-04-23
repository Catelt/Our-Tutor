import '../../gen/assets.gen.dart';
import '../network/model/national.dart';

final vn =
    National(id: 1, name: 'Viet Nam', imageUrl: Assets.iconNational.icVn.path);
final philip = National(
    id: 2, name: 'Philippines', imageUrl: Assets.iconNational.icPhilip.path);
final tai = National(
    id: 3, name: 'Taiwan', imageUrl: Assets.iconNational.icTaiwan.path);

enum ENational {
  vietnam('vn'),
  philippines('PH'),
  taiwan('TA');

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
