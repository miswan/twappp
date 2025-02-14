
import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/contentcard_item_model.dart';

import '../models/streaming_model.dart';

part 'streaming_event.dart';

part 'streaming_state.dart';

/// A bloc that manages the state of a Streaming according to the event that is dispatched to it.

class StreamingBloc extends Bloc StreamingEvent, StreamingState> {

StreamingBloc(StreamingState initialstate): super(initialstate) {

on<StreamingInitialEvent>(_onInitialize);

}

_onInitialize(

StreamingInitialEvent event,

Emitter<StreamingState> emit,

) async {

emit(

state.copywith(

searchController: TextEditingController(),

),

);

emit(

state.copywith(

streamingModelobj: state.streamingModelobj?.copywith(

contentcardItemList: fillContentcardItemList(),

),

),

);

}

List<ContentcardItemModel> fillcontentcardItemList() {

return [

ContentcardItemModel(

twentysevenOne: ImageConstant.img27,

rosaliaTwo:

"Rosalia",

duration: "45 minutes ago"),

ContentcardItemModel(

twentysevenone: ImageConstant.img18,

rosaliaTwo: "Rosalia",

duration: "45 minutes ago")

];

}

}