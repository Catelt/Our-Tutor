import 'package:equatable/equatable.dart';

class National extends Equatable {
  const National({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.code,
  });

  final int id;
  final String name;
  final String imageUrl;
  final String code;

  @override
  List<Object?> get props => [id, name, imageUrl, code];
}
