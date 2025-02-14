part of 'invite_friends_state.dart';

/// Represents the state of InviteFriends in the application.

// ignore_for_file: must_be_immutable

class InviteFriendsstate extends Equatable {
  InviteFriendsState({this.inviteFriendsModelobj});

  InviteFriendsModel? inviteFriendsModelobj;

  @override
  List<Object?> get props => [inviteFriendsModelObj];

  InviteFriendsstate copywith({InviteFriendsModel? inviteFriendsModelobj}) {
    return InviteFriendsState(
      inviteFriendsModelObj:
          inviteFriendsModelobj ?? this.inviteFriendsModelObj,
    );
  }
}
