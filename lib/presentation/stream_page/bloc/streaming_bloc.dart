import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/contentcard_item_model.dart';
import '../models/streaming_model.dart';

part 'streaming_event.dart';
part 'streaming_state.dart';

class StreamingBloc extends Bloc<StreamingEvent, StreamingState> {
  StreamingBloc() : super(StreamingInitial()) {
    on<StreamingInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    StreamingInitialEvent event,
    Emitter<StreamingState> emit,
  ) async {
    final streamingModel = StreamingModel(
      contentcardItemList: _fillContentcardItemList(),
    );

    emit(StreamingState(
      searchController: TextEditingController(),
      streamingModelObj: streamingModel,
    ));
  }

  List<ContentcardItemModel> _fillContentcardItemList() {
    return [
      ContentcardItemModel(
          twentysevenOne: ImageConstant.img27,
          rosaliaTwo: "Rosalia",
          duration: "45 minutes ago"),
      ContentcardItemModel(
          twentysevenOne: ImageConstant.img18,
          rosaliaTwo: "Rosalia",
          duration: "45 minutes ago")
    ];
  }
}
