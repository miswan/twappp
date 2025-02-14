import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

class FriendlistItemModel extends Equatable {
  final String? kevinAllsrub;
  final String? kevinallsrub1;
  final String? yourefriends;
  final bool? checkmark;
  final String? id;

  FriendlistItemModel({
    this.kevinAllsrub,
    this.kevinallsrub1,
    this.yourefriends,
    this.checkmark = false,
    this.id,
  });

  FriendlistItemModel copyWith({
    String? kevinAllsrub,
    String? kevinallsrub1,
    String? yourefriends,
    bool? checkmark,
    String? id,
  }) {
    return FriendlistItemModel(
      kevinAllsrub: kevinAllsrub ?? this.kevinAllsrub,
      kevinallsrub1: kevinallsrub1 ?? this.kevinallsrub1,
      yourefriends: yourefriends ?? this.yourefriends,
      checkmark: checkmark ?? this.checkmark,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props =>
      [kevinAllsrub, kevinallsrub1, yourefriends, checkmark, id];
}
