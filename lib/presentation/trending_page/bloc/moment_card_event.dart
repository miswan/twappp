import 'package:equatable/equatable.dart';

abstract class MomentCardEvent extends Equatable {
  const MomentCardEvent();

  @override
  List<Object> get props => [];
}

class LoadMomentCards extends MomentCardEvent {}
