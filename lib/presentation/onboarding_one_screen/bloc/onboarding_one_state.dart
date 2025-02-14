part of 'onboarding_one_bloc.dart';

class OnboardingOneState extends Equatable {
  final OnboardingOneModel onboardingOneModelObj;

  const OnboardingOneState({this.onboardingOneModelObj});

  @override
  List<Object?> get props => [onboardingOneModelObj];

  OnboardingOneState copyWith({OnboardingOneModel? onboardingOneModelObj}) {
    return OnboardingOneState(
      onboardingOneModelObj:
          onboardingOneModelObj ?? this.onboardingOneModelObj,
    );
  }
}
