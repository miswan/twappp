import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/page_view_model.dart';

part 'page_view_event.dart';
part 'page_view_state.dart';

class PageViewBloc extends Bloc<PageViewEvent, PageViewState> {
  PageViewBloc() : super(const PageViewState()) {
    on<PageViewInitialEvent>(_onInitialize);
    on<UpdateCommentEvent>(_onUpdateComment);
  }

  _onInitialize(
    PageViewInitialEvent event,
    Emitter<PageViewState> emit,
  ) async {
    emit(state.copywith(
      commentController: TextEditingController(),
      pageViewModel: PageViewModel(),
    ));
  }

  _onUpdateComment(
    UpdateCommentEvent event,
    Emitter<PageViewState> emit,
  ) {
    emit(state.copywith(
      commentController: TextEditingController(text: event.comment),
    ));
  }
}
