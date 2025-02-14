part of 'page_view_bloc.dart';

abstract class PageViewEvent extends Equatable {
  const PageViewEvent();

  @override
  List<Object?> get props => [];
}

class PageViewInitialEvent extends PageViewEvent {
  @override
  List<Object?> get props => [];
}

class UpdateCommentEvent extends PageViewEvent {
  final String comment;

  const UpdateCommentEvent(this.comment);

  @override
  List<Object?> get props => [comment];
}
