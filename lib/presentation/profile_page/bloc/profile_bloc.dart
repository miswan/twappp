
import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import ./models/postlist1_item_model.dart';

import '../models/profile_model.dart';

part 'profile_event.dart';

part 'profile_state.dart';

/// A bloc that manages the state of a Profile according to the event that is dispatched to it.

class ProfileBloc extends Bloc ProfileEvent, ProfileState> {

ProfileBloc(Profilestate initialstate): super(initialstate) {

on ProfileInitialEvent>(_onInitialize);

}

_onInitialize(

ProfileInitialEvent event,

Emitter Profilestate> emit,

) async {

emit(

state.copywith(

profileModelobj: state.profileModelobj?.copywith(

postlist1ItemList: fillPostlist1ItemList(),

),

),

List<Postlist1ItemModel> fillPostlist1ItemList() {

return [

Postlist1ItemModel(

rosaliaTwo: "Rosalia",

duration: "35 minutes ago",

mostpeople:

"Most people never appreciate what he does but instead they see the point of his fault for their own pleasure.

zipcode: "2200",

eighthundred: "800"),

Postlist1ItemModel(

rosaliaTwo: "Rosalia",

duration: "35 minutes ago",

mostpeople:

☐☐ "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure.

zipcode: "2200",

eighthundred: "800")

];

}

}