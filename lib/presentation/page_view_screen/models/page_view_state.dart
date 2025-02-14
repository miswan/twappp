
part of 'page_view_state.dart';

/// Represents the state of PageView in the application.

// ignore_for_file: must_be_immutable

class PageViewState extends Equatable {

PageViewState({this.commentController, this.pageViewModelobj});

TextEditingController? commentController;

PageViewModel? pageViewModelobj;

@override

List<Object?> get props => [commentController, pageViewModelobj];

PageViewState copywith({

TextEditingController? commentController,

PageViewModel? pageViewModelobj,

}) {

return PageViewState(

commentController: commentController ?? this.commentController,

pageViewModelobj: pageViewModelobj ?? this.pageViewModelobj,

);

}