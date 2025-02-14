import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/discover_model.dart';

import '../models/profilessection_item_model.dart';

part 'discover_event.dart';

part 'discover_state.dart';

/// A bloc that manages the state of a Discover according to the event that is dispatched to it.

class DiscoverBloc extends Bloc<DiscoverEvent, Discoverstate> {

DiscoverBloc(Discoverstate initialstate): super(initialstate) {

on<DiscoverInitialEvent>(_onInitialize);

}

_onInitialize(

DiscoverInitialEvent event,

Emitter<Discoverstate> emit,

) async {

emit(

state.copywith(

discoverModelobj: state.discoverModelobj?.copywith(

profilessectionItemList: fillProfilessectionItemList(),

),

),

);

}

List ProfilessectionItemModel> fillProfilessectionItemList() {

return [

ProfilessectionItemModel(

nineteenone: ImageConstant.img19,

agnessMonica: ImageConstant.imgPlayDeepPurpleA200,

agnessmonical: "Agness Monica"),

ProfilessectionItemModel (nineteenOne: ImageConstant.img19178x146),

ProfilessectionItemModel(

nineteenone: ImageConstant.img191,

agnessMonica: ImageConstant.imgPlayDeepPurpleA200,

agnessmonical: "Windy Wandah")

];

}

}