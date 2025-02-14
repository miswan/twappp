part of onboarding_one_bloc.dart';

/// Represents the state of Onboardingone in the application.

// ignore_for_file: must_be_immutable

class OnboardingOneState extends Equatable {

Onboardingonestate({this.onboardingOneModelobj});

OnboardingOneModel? onboardingOneModelObj;

@override

List<Object?> get props => [onboardingOneModelobj];

Onboardingonestate copywith({OnboardingOneModel? onboardingOneModelobj}) {

return OnboardingOneState(

onboardingOneModelobj:

onboardingOneModelobj ?? this.onboardingOneModelobj,

);

}

}