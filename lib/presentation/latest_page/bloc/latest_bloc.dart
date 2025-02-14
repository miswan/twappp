
import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/latest_model.dart';

import '../models/trendingposts_item_model.dart';

part 'latest_event.dart';

part 'latest_state.dart';

/// A bloc that manages the state of a Latest according to the event that is dispatched to it.

class LatestBloc extends Bloc LatestEvent, Lateststate> {

LatestBloc(LatestState initialstate): super(initialstate) {

on<LatestInitialEvent>(_onInitialize);

}

_onInitialize(

LatestInitialEvent event,

Emitter<Lateststate> emit,

) async {

emit(

state.copywith(

latestModelobj: state.latestModelObj?.copywith(

trendingpostsItemList: fillTrendingpostsItemList(),

),

),

); }

List<TrendingpostsItemModel> fillTrendingpostsItemList() {

return [

TrendingpostsItemModel(

rickonad: "Rick Onad",

time: "40 min ago",

thisisthe:

|| "This is the moment where i take a photo of a couple hugging in a beautiful rice field.",

huge: "#huge",

fotography: "#fotography",

nature: "#nature"),

TrendingpostsItemModel(

rickonad: "Rick Onad",

time: "40 min ago",

thisisthe:

"This is the moment where i take a photo of a couple hugging in a beautiful rice field.",

huge: "#huge",

fotography: "#fotography",

nature: "#nature")

];

}

}