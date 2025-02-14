import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/friends_model.dart';

part 'friends_event.dart';
part 'friends_state.dart';

class FriendsBloc extends Bloc<FriendsEvent, FriendsState> {
  FriendsBloc(FriendsState initialState) : super(initialState) {
    on<FriendsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FriendsInitialEvent event,
    Emitter<FriendsState> emit,
  ) async {
    final searchController = TextEditingController();
    searchController.addListener(() {
      // Add search logic here
      final searchText = searchController.text.toLowerCase();
      final allFriends = state.friendsModelObj?.friendslistItemList ?? [];
      final filteredFriends = allFriends
          .where((friend) =>
              friend.kevinallsrub?.toLowerCase().contains(searchText) ?? false)
          .toList();

      emit(state.copyWith(
        friendsModelObj: FriendsModel(friendslistItemList: filteredFriends),
      ));
    });

    emit(state.copyWith(
      searchController: searchController,
      friendsModelObj: FriendsModel(
        friendslistItemList: [
          FriendslistItemModel(
            kevinallsrub: "Kevin Allsrub",
            yourefriends: "You're friends on twitter",
            id: "1",
          ),
          FriendslistItemModel(
            kevinallsrub: "Sarah Johnson",
            yourefriends: "You're friends on facebook",
            id: "2",
          ),
        ],
      ),
    ));
  }
}
