part of 'friends_bloc.dart';

class FriendsState {
  final FriendsModel? friendsModelObj;
  final TextEditingController? searchController;

  FriendsState({
    this.friendsModelObj,
    this.searchController,
  });

  FriendsState copyWith({
    FriendsModel? friendsModelObj,
    TextEditingController? searchController,
  }) {
    return FriendsState(
      friendsModelObj: friendsModelObj ?? this.friendsModelObj,
      searchController: searchController ?? this.searchController,
    );
  }
}
