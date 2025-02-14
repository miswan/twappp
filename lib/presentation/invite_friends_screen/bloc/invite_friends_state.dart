part of 'invite_friends_bloc.dart';

class InviteFriendsState extends Equatable {
  final InviteFriendsModel? inviteFriendsModelObj;

  const InviteFriendsState({
    this.inviteFriendsModelObj,
  });

  InviteFriendsState copyWith({
    InviteFriendsModel? inviteFriendsModelObj,
  }) {
    return InviteFriendsState(
      inviteFriendsModelObj:
          inviteFriendsModelObj ?? this.inviteFriendsModelObj,
    );
  }

  @override
  List<Object?> get props => [inviteFriendsModelObj];
}
