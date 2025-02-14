
import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/friends_model.dart';

import '../models/friendslist_item_model.dart';

part 'friends_event.dart';

part 'friends_state.dart';

/// A bloc that manages the state of a Friends according to the event that is dispatched to it.

class FriendsBloc extends Bloc<FriendsEvent, Friendsstate> {

FriendsBloc(Friendsstate initialstate): super(initialstate) {

on<FriendsInitialEvent>(_onInitialize);

}

_onInitialize(

FriendsInitialEvent event,

Emitter Friendsstate> emit,

) async {

emit(

state.copywith(

searchController: TextEditingController(),

),

);

emit(

state.copywith(

friendsModelobj: state.friendsModelobj?.copywith(

friendslistItemList: fillFriendslistItemList(),

),

),

);

}

List<FriendslistItemModel> fillFriendslistItemList() {

return [

FriendslistItemModel(

kevinallsrub: "Kevin Allsrub",

yourefriends: "YourDe friends on twitter"),

FriendslistItemModel(),

FriendslistItemModel(),

FriendslistItemModel(),

FriendslistItemModel(),

FriendslistItemModel(),

FriendslistItemModel()

];

}

}