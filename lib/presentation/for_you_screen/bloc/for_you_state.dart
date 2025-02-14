entation for_you_screen > bloc 

part of 'for_you_state.dart';

/// Represents the state of ForYou in the application.

// ignore_for_file: must_be_immutable

class ForYouState extends Equatable {

ForYouState({this.forYouModelObj});

ForYouModel? forYouModelobj;

@override

List<Object?> get props => [forYouModelobj];

ForYouState copywith({ForYouModel? forYouModelobj}) {

return ForYouState(

forYouModelobj: forYouModelobj ?? this.forYouModelobj,

);

}

}