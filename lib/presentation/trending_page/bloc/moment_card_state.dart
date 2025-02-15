import 'package:equatable/equatable.dart';
import '../models/momentcard_item_model.dart';

abstract class MomentCardState extends Equatable {
  const MomentCardState();

  @override
  List<Object> get props => [];
}

class MomentCardInitial extends MomentCardState {}

class MomentCardLoading extends MomentCardState {}

class MomentCardLoaded extends MomentCardState {
  final List<MomentcardItemModel> moments;

  const MomentCardLoaded(this.moments);

  @override
  List<Object> get props => [moments];
}

class MomentCardError extends MomentCardState {
  final String message;

  const MomentCardError(this.message);

  @override
  List<Object> get props => [message];
}
