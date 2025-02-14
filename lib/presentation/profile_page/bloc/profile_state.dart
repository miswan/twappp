part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  final ProfileModel? profileModelObj;

  const ProfileState({this.profileModelObj});

  ProfileState copyWith({ProfileModel? profileModelObj}) {
    return ProfileState(
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }

  @override
  List<Object?> get props => [profileModelObj];
}
