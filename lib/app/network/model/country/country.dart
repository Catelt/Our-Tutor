import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/country.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@unfreezed
class MCountry with _$MCountry {
  MCountry._();

  factory MCountry({
    @JsonKey(name: "iso2_cc") required String code,
    required String name,
  }) = _MCountry;

  factory MCountry.fromJson(Map<String, Object?> json) =>
      _$MCountryFromJson(json);

  static List<MCountry> getData() {
    List<MCountry> result = [];
    CountryData.countryCodes.forEach((e) {
      result.add(MCountry.fromJson(e));
    });
    return result;
  }

  factory MCountry.fromCode(String code) {
    final list = getData();
    return list.firstWhere(
      (e) => e.code == code,
      orElse: () => list.first,
    );
  }
}
