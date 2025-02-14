part of 'for_you_bloc.dart';

class ForYouState extends Equatable {
  final ForYouModel? forYouModelObj;

  const ForYouState({
    this.forYouModelObj,
  });

  ForYouState copyWith({
    ForYouModel? forYouModelObj,
  }) {
    return ForYouState(
      forYouModelObj: forYouModelObj ?? this.forYouModelObj,
    );
  }

  @override
  List<Object?> get props => [forYouModelObj];
}
