import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/daily_new_model.dart';

import '../models/listforty_one_item_model.dart';

import '../models/profilessection1_item_model.dart';

part 'daily_new_event.dart';

part 'daily_new_state.dart';

/// A bloc that manages the state of a DailyNew according to the event that is dispatched to it.

class DailyNewBloc extends Bloc<DailyNewEvent, DailyNewState> {

DailyNewBloc(DailyNewState initialstate): super(initialstate) {

on<DailyNewInitialEvent>(_onInitialize);

}

onInitialize(

DailyNewInitialEvent event,

Emitter<DailyNewState> emit,

) async {

emit(

state.copywith(

dailyNewModelobj: state.dailyNewModelobj?.copywith(

profilessection1ItemList: fillProfilessection1ItemList(),

listfortyOneItemList: fillListfortyOneItemList(),

),

),

);

}

List Profilessection1ItemModel> fillProfilessection1ItemList() {

return [

Profilessection1ItemModel(

nineteenone: ImageConstant.img19,

agnessMonica: ImageConstant.imgPlayDeepPurpleA200,

agnessmonica1: "Agness Monica"),

Profilessection1ItemModel(nineteenOne: ImageConstant.img19178x146),

Profilessection1ItemModel(

nineteenone: ImageConstant.img191,

agnessMonica: ImageConstant.imgPlayDeepPurpleA200,

agnessmonical: "Windy Wandah")

];

}

List<ListfortyOneItemModel> fillListfortyOneItemList() {

return [

ListfortyOneItemModel(fortyone: ImageConstant.img40166x166),

ListfortyOneItemModel(fortyone: ImageConstant.img34)

];

}

}