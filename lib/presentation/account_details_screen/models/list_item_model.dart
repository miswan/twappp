import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

class ListItemModel extends Equatable {
  const ListItemModel({
    this.image,
    this.name,
  });

  final String? image;
  final String? name;

  ListItemModel copyWith({
    String? image,
    String? name,
  }) {
    return ListItemModel(
      image: image ?? this.image,
      name: name ?? this.name,
    );
  }

  @override
  List<Object?> get props => [image, name];
}
