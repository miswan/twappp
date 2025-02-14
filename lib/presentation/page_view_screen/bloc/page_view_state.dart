part of 'page_view_bloc.dart';

class PageViewState extends Equatable {
  final TextEditingController? commentController;
  final PageViewModel? pageViewModel;

  const PageViewState({
    this.commentController,
    this.pageViewModel,
  });

  PageViewState copywith({
    TextEditingController? commentController,
    PageViewModel? pageViewModel,
  }) {
    return PageViewState(
      commentController: commentController ?? this.commentController,
      pageViewModel: pageViewModel ?? this.pageViewModel,
    );
  }

  @override
  List<Object?> get props => [
        commentController,
        pageViewModel,
      ];
}
