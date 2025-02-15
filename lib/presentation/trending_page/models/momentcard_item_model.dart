import 'package:equatable/equatable.dart';

class MomentcardItemModel extends Equatable {
  final String image;
  final String username;
  final String timeAgo;
  final String description;
  final String tag1;
  final String tag2;
  final String tag3;

  const MomentcardItemModel({
    required this.image,
    required this.username,
    required this.timeAgo,
    required this.description,
    required this.tag1,
    required this.tag2,
    required this.tag3,
  });

  @override
  List<Object?> get props => [
        image,
        username,
        timeAgo,
        description,
        tag1,
        tag2,
        tag3,
      ];
}
