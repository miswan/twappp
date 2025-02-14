part of 'friends_state.dart';

/// Represents the state of Friends in the application.

// ignore_for_file: must_be_immutable

class Friendsstate extends Equatable {
  Friendsstate({this.searchController, this.friendsModelobj});

  TextEditingController? searchController;

  FriendsModel? friendsModelobj;

  @override
  List<Object?> get props => [searchController, friendsModelObj];

  Friendsstate copywith({
    TextEditingController? searchController,
    FriendsModel? friendsModelobj,
  }) {
    return Friendsstate(
      searchController: searchController ?? this.searchController,
      friendsModelobj: friendsModelobj ?? this.friendsModelobj,
    );
  }
}
