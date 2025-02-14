

part of 'detailed_profile_state.dart';

/// Represents the state of DetailedProfile in the application.

// ignore_for_file: must_be_immutable

class DetailedProfileState extends Equatable {

DetailedProfileState({this.detailedProfileModelObj});

DetailedProfileModel? detailedProfileModelobj;

@override

List<Object?> get props => [detailedProfileModelObj];

DetailedProfilestate copywith(

{DetailedProfileModel? detailedProfileModelobj}) {

return DetailedProfileState(

detailedProfileModelobj:

detailedProfileModelobj ?? this.detailedProfileModelobj,

);

}