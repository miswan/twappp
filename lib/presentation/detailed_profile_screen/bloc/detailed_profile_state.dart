<<<<<<< HEAD
part of 'detailed_profile_bloc.dart';

class DetailedProfileState extends Equatable {
  final DetailedProfileModel? detailedProfileModelObj;

  const DetailedProfileState({
    this.detailedProfileModelObj,
  });

  DetailedProfileState copyWith({
    DetailedProfileModel? detailedProfileModelObj,
  }) {
    return DetailedProfileState(
      detailedProfileModelObj:
          detailedProfileModelObj ?? this.detailedProfileModelObj,
    );
  }

  @override
  List<Object?> get props => [detailedProfileModelObj];
=======

part of 'detailed_profile_bloc.dart';

/// Represents the state of DetailedProfile in the application.
class DetailedProfileState extends Equatable {
  final DetailedProfileModel? detailedProfileModelObj;

  const DetailedProfileState({this.detailedProfileModelObj});

  @override
  List<Object?> get props => [detailedProfileModelObj];

  DetailedProfileState copyWith({
    DetailedProfileModel? detailedProfileModelObj,
  }) {
    return DetailedProfileState(
      detailedProfileModelObj: 
          detailedProfileModelObj ?? this.detailedProfileModelObj,
    );
  }
>>>>>>> cfb12471a2e731311ef7d235d72a0803745d1f07
}
