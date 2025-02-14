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
}
