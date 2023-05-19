import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/specialties.dart';

part 'specialty.freezed.dart';
part 'specialty.g.dart';

@unfreezed
class MSpecialty with _$MSpecialty {
  MSpecialty._();

  factory MSpecialty({
    required String id,
    required String name,
    required String categoriesId,
  }) = _MSpecialty;

  factory MSpecialty.empty() => MSpecialty(id: "", name: "", categoriesId: "");

  factory MSpecialty.fromJson(Map<String, Object?> json) =>
      _$MSpecialtyFromJson(json);

  static List<MSpecialty> getData() {
    List<MSpecialty> result = [];
    Specialty.values.forEach((e) {
      if (e.id.isNotEmpty) {
        result.add(
            MSpecialty(id: e.id, name: e.name, categoriesId: e.categoriesId));
      }
    });
    return result;
  }

  factory MSpecialty.fromKey(String id) {
    final list = getData();
    return list.firstWhere((e) => e.id == id, orElse: () => MSpecialty.empty());
  }
}
