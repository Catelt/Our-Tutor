import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/major.dart';

part 'major.freezed.dart';
part 'major.g.dart';

@unfreezed
class MMajor with _$MMajor {
  MMajor._();

  factory MMajor({
    required String id,
    required String key,
    required String englishName,
    required String vietnameseName,
  }) = _MMajor;

  factory MMajor.empty() =>
      MMajor(id: "", key: "", englishName: "", vietnameseName: "");

  factory MMajor.fromJson(Map<String, Object?> json) => _$MMajorFromJson(json);

  static List<MMajor> getData() {
    List<MMajor> result = [];
    MajorData.data.forEach((e) {
      result.add(MMajor.fromJson(e));
    });
    return result;
  }

  factory MMajor.fromKey(String key) {
    final list = getData();
    return list.firstWhere((e) => e.key == key,
        orElse: () =>
            MMajor(id: "", key: key, englishName: key, vietnameseName: ""));
  }
}
