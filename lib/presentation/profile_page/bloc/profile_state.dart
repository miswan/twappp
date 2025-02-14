
part of 'profile_state.dart';

/// Represents the state of Profile in the application.

// ignore_for_file: must_be_immutable

class Profilestate extends Equatable {

ProfileState({this.profileModelobj});

ProfileModel? profileModelobj;

@override

List<Object?> get props => [profileModelobj];

Profilestate copywith({ProfileModel? profileModelobj}) {

return ProfileState(

profileModelobj: profileModelobj ?? this.profileModelobj,

);