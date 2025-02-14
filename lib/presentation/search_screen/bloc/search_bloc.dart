
import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/recentsearches_item_model.dart';

import '../models/search_model.dart';

part 'search_event.dart';

part 'search_state.dart';

/// A bloc that manages the state of a Search according to the event that is dispatched to it.

class SearchBloc extends Bloc SearchEvent, SearchState> {

SearchBloc(SearchState initialstate): super (initialstate) {

}

on<SearchInitialEvent>(_onInitialize);

_onInitialize(

SearchInitialEvent event,

Emitter SearchState> emit,

) async {

emit(

state.copywith(

searchController: TextEditingController(),

),

);

emit(

);

}

state.copywith(

searchModelobj: state.searchModelObj?.copywith(

), recentsearchesItemList: fillRecentsearches ItemList(),

List<RecentsearchesItemModel> fillRecentsearches ItemList() {

return Γ

Recentsearches ItemModel(

kevinAllsrub: ImageConstant.imgEllipse5,

kevinallsrub1: "Kevin Allsrub",

yourefriends: "Youre friends on twitter"),

Recent searchesItemModel(

kevinAllsrub: ImageConstant.imgEllipse6,

kevinallsrub1: "Sarah Owen",

yourefriends: "Your'e friends on twitter"),

Recentsearches ItemModel(

kevinAllsrub: ImageConstant.imgEllipse7,

kevinallsrub1: "Rick Onad",

yourefriends: "Your'e friends on twitter"),

Recentsearches ItemModel(

kevinAllsrub: ImageConstant.imgEllipses,

kevinallsrub1: "Steven Ford",

yourefriends: "Your'e friends on twitter"),

RecentsearchesItemModel(

kevinAllsrub: ImageConstant.imgEllipse9,

kevinallsrub1: "Lucas Anna ",

yourefriends: "Your'e friends on twitter"),

RecentsearchesItemModel(

kevinAllsrub: ImageConstant.imgEllipse10,

kevinallsrub1: "Nabila Remaar",

yourefriends: "Your'e friends on twitter"),

Recent searchesItemModel(

kevinAllsrub: ImageConstant.imgEllipse11,

kevinallsrub1: "Rosalia",

yourefriends: "Youre friends on twitter")

];