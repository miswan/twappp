import 'package:equatable/equatable.dart';

/// This class is used in the [friendslist_item_widget] screen.

// ignore_for_file: must_be_immutable

class FriendslistItemModel extends Equatable {
  FriendslistItemModel({
    this.kevinallsrub,
    this.yourefriends,
    this.id,
  }) {
    kevinallsrub = kevinallsrub ?? "Kevin Allsrub";
    yourefriends = yourefriends ?? "You're friends on twitter";
    id = id ?? "";
  }

  String? kevinallsrub;
  String? yourefriends;
  String? id;

  FriendslistItemModel copyWith({
    String? kevinallsrub,
    String? yourefriends,
    String? id,
  }) {
    return FriendslistItemModel(
      kevinallsrub: kevinallsrub ?? this.kevinallsrub,
      yourefriends: yourefriends ?? this.yourefriends,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [kevinallsrub, yourefriends, id];
}
