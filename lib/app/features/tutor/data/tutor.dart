import 'package:flutter/foundation.dart';
import 'national.dart';

@immutable
class Tutor {
  const Tutor({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.introduceUrl,
    required this.national,
    this.avgRating = 0,
    this.numRating = 0,
    required this.languages,
    required this.specialties,
    required this.courses,
    required this.interest,
    required this.experience,
  });

  final int id;
  final String name;
  final String imageUrl;
  final String description;
  final String introduceUrl;
  final National national;
  final double avgRating;
  final int numRating;
  final List<String> languages;
  final List<String> specialties;
  final List<String> courses;
  final String interest;
  final String experience;

  @override
  String toString() {
    return 'Tutor(id: $id, name: $name, imageUrl: $imageUrl, description: $description, introduceUrl: $introduceUrl, national: $national, avgRating: $avgRating, numRating: $numRating, languages: $languages, specialties: $specialties, courses: $courses, interest: $interest, experience: $experience)';
  }

  @override
  bool operator ==(covariant Tutor other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.imageUrl == imageUrl &&
        other.description == description &&
        other.introduceUrl == introduceUrl &&
        other.national == national &&
        other.avgRating == avgRating &&
        other.numRating == numRating &&
        listEquals(other.languages, languages) &&
        listEquals(other.specialties, specialties) &&
        listEquals(other.courses, courses) &&
        other.interest == interest &&
        other.experience == experience;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        imageUrl.hashCode ^
        description.hashCode ^
        introduceUrl.hashCode ^
        national.hashCode ^
        avgRating.hashCode ^
        numRating.hashCode ^
        languages.hashCode ^
        specialties.hashCode ^
        courses.hashCode ^
        interest.hashCode ^
        experience.hashCode;
  }
}
