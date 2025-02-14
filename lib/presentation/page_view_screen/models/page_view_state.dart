import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:twappp/presentation/page_view_screen/models/page_view_model.dart';

part 'page_view_state.g.dart';

/// Represents the state of PageView in the application.
// ignore_for_file: must_be_immutable
class PageViewState extends Equatable {
  PageViewState({
    this.commentController,
    this.pageViewModelobj,
  });

  TextEditingController? commentController;
  PageViewModel? pageViewModelobj;

  @override
  List<Object?> get props => [
        commentController,
        pageViewModelobj,
      ];

  PageViewState copyWith({
    TextEditingController? commentController,
    PageViewModel? pageViewModelobj,
  }) {
    return PageViewState(
      commentController: commentController ?? this.commentController,
      pageViewModelobj: pageViewModelobj ?? this.pageViewModelobj,
    );
  }
}
