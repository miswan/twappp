
part of 'splash_state.dart';

/// Represents the state of Splash in the application.

// ignore_for_file: must_be_immutable

class Splashstate extends Equatable {

SplashState({this.splashModelobj});

SplashModel? splashModelobj;

@override

List<Object?> get props => [splashModelobj];

Splashstate copywith({SplashModel? splashModelObj}) {

return Splashstate(

splashModelObj: splashModelobj ?? this.splashModelobj,

);

}