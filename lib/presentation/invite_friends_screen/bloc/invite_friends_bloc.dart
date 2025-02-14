import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/friendlist_item_model.dart';
import '../models/invite_friends_model.dart';

part 'invite_friends_event.dart';
part 'invite_friends_state.dart';

class InviteFriendsBloc extends Bloc<InviteFriendsEvent, InviteFriendsState> {
  InviteFriendsBloc(InviteFriendsState initialState) : super(initialState) {
    on<InviteFriendsInitialEvent>(_onInitialize);
    on<FriendlistItemEvent>(_friendlistItem);
  }

  void _onInitialize(
    InviteFriendsInitialEvent event,
    Emitter<InviteFriendsState> emit,
  ) async {
    emit(state.copyWith(
      inviteFriendsModelObj: state.inviteFriendsModelObj?.copyWith(
        friendlistItemList: fillFriendlistItemList(),
      ),
    ));
  }

  void _friendlistItem(
    FriendlistItemEvent event,
    Emitter<InviteFriendsState> emit,
  ) {
    List<FriendlistItemModel> newList = List<FriendlistItemModel>.from(
        state.inviteFriendsModelObj!.friendlistItemList);

    newList[event.index] = newList[event.index].copyWith(
      checkmark: event.checkmark,
    );

    emit(state.copyWith(
      inviteFriendsModelObj: state.inviteFriendsModelObj?.copyWith(
        friendlistItemList: newList,
      ),
    ));
  }

  List<FriendlistItemModel> fillFriendlistItemList() {
    return [
      FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse5,
        kevinallsrub1: "Kevin Allsrub",
        yourefriends: "You're friends on twitter",
      ),
      FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse6,
        kevinallsrub1: "Sarah Owen",
        yourefriends: "You're friends on twitter",
      ),
      FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse7,
        kevinallsrub1: "Rick Onad",
        yourefriends: "You're friends on twitter",
      ),
      FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse8,
        kevinallsrub1: "Steven Ford",
        yourefriends: "You're friends on twitter",
      ),
      FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse9,
        kevinallsrub1: "Lucas Anna",
        yourefriends: "You're friends on twitter",
      ),
      FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse10,
        kevinallsrub1: "Nabila Remaar",
        yourefriends: "You're friends on twitter",
      ),
      FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse11,
        kevinallsrub1: "Rosalia",
        yourefriends: "You're friends on twitter",
      ),
      FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse12,
        kevinallsrub1: "Albert Connor",
        yourefriends: "You're friends on twitter",
      ),
      FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse13,
        kevinallsrub1: "Melvin Klein",
        yourefriends: "You're friends on twitter",
      ),
    ];
  }
}
