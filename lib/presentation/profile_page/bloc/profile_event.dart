

part of 'profile_event.dart';

/// Abstract class for all events that can be dispatched from the

///Profile widget.

///

/// Events must be immutable and implement the [Equatable] interface.

class ProfileEvent extends Equatable {

@override

List<Object?> get props [];

/// Event that is dispatched when the Profile widget is first created.

class ProfileInitialEvent extends ProfileEvent {

@override

List<Object?> get props [];

}