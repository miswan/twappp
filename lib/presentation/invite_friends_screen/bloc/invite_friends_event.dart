part of 'invite_friends_bloc.dart';

@immutable
abstract class InviteFriendsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class InviteFriendsInitialEvent extends InviteFriendsEvent {
  @override
  List<Object?> get props => [];
}

class FriendlistItemEvent extends InviteFriendsEvent {
  final int index;
  final bool checkmark;

  FriendlistItemEvent({
    required this.index,
    required this.checkmark,
  });

  @override
  List<Object?> get props => [
        index,
        checkmark,
      ];
}
