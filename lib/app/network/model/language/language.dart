import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/language.dart';

part 'language.freezed.dart';
part 'language.g.dart';

@unfreezed
class MLanguage with _$MLanguage {
  MLanguage._();

  factory MLanguage({
    required String code,
    required String name,
    required String nativeName,
  }) = _MLanguage;

  factory MLanguage.fromJson(Map<String, Object?> json) =>
      _$MLanguageFromJson(json);

  static List<MLanguage> getData() {
    List<MLanguage> result = [];
    LanguageData.data.forEach((e) {
      result.add(MLanguage.fromJson(e));
    });
    return result;
  }

  factory MLanguage.fromCode(String code) {
    final list = getData();
    return list.firstWhere((e) => e.code == code);
  }
}
