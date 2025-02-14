import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/page_view_model.dart';

part 'page_view_event.dart';

part 'page_view_state.dart';

/// A bloc that manages the state of a PageView according to the event that is dispatched to it.

class PageViewBloc extends Bloc<PageViewEvent, PageViewState> {
  PageViewBloc(PageViewState initialstate) : super(initialstate) {
    on<PageViewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageViewInitialEvent event,
    Emitter<PageViewState> emit,
  ) async {
    emit(
      state.copywith(
        commentController: TextEditingController(),
      ),
    );
  }
}
