

import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/listmerry_new_item_model.dart';

import '../models/stories_item_model.dart';

import '../models/stories_model.dart';

part 'stories_event.dart';

part 'stories_state.dart';

/// A bloc that manages the state of a Stories according to the event that is dispatched to it.

class StoriesBloc extends Bloc StoriesEvent, StoriesState> {

StoriesBloc(Storiesstate initialstate): super(initialstate) {

}

on<StoriesInitialEvent>(_onInitialize);

_onInitialize(

StoriesInitialEvent event,

Emitter<Storiesstate> emit,

) async {

emit(

state.copywith(

searchController: TextEditingController(),

),

);

emit(

state.copywith(

storiesModelobj: state.storiesModelobj?.copywith(

storiesItemList: fillstoriesItemList(),

listmerryNewItemList: fillListmerryNewItemList(),

),

),

);

}

List<StoriesItemModel> fillstoriesItemList() {

return [

}

];

StoriesItemModel (royOne: ImageConstant.imgEllipse15, royTwo: "Roy"),

StoriesItemModel (royOne: ImageConstant.imgEllipse22, royTwo: "Jordan"),

StoriesItemModel (royOne: ImageConstant.imgEllipse26, royTwo: "Chrystin"),

StoriesItemModel (royOne: ImageConstant.imgEllipse28, royTwo: "Vrindha"),

StoriesItemModel (royTwo: "Angeline")

List<ListmerryNewItemModel> fillListmerryNewItemList() {

return [

ListmerryNewItemModel(

}

}

merrynewyear: "Merry New Year", price: "21 : 00 | Latuna Beach")

];