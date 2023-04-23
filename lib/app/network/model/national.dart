import 'package:flutter/material.dart';

@immutable
class National {
  const National({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  final int id;
  final String name;
  final String imageUrl;

  @override
  String toString() => 'National(id: $id, name: $name, imageUrl: $imageUrl)';

  @override
  bool operator ==(covariant National other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.imageUrl == imageUrl;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ imageUrl.hashCode;
}
