part of 'invite_friends_event.dart';

/// Abstract class for all events that can be dispatched from the

///InviteFriends widget.

///

/// Events must be immutable and implement the [Equatable] interface.

class InviteFriendsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the InviteFriends widget is first created.

class InviteFriendsInitialEvent extends InviteFriendsEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

class FriendlistItemEvent extends InviteFriendsEvent {
  FriendlistItemEvent({required this.index, this.checkmark});

  int index;

  bool? checkmark;

  @override
  List<Object?> get props => [index, checkmark];
}
