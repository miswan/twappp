part of 'splash_bloc.dart';

class Splashstate extends Equatable {
  final SplashModel? splashModelObj;

  const Splashstate({this.splashModelObj});

  @override
  List<Object?> get props => [splashModelObj];

  Splashstate copyWith({SplashModel? splashModelObj}) {
    return Splashstate(splashModelObj: splashModelObj ?? this.splashModelObj);
  }
}
