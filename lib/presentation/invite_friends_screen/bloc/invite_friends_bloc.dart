import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/friendlist_item_model.dart';

import '../models/invite_friends_model.dart';

part 'invite_friends_event.dart';

part 'invite_friends_state.dart';

/// A bloc that manages the state of a InviteFriends according to the event that is dispatched to it.

class InviteFriendsBloc extends Bloc<InviteFriendsEvent, InviteFriendsstate> {

InviteFriendsBloc (InviteFriendsState initialstate): super(initialstate) {

}

on<InviteFriendsInitialEvent>(_onInitialize);

on<FriendlistItemEvent>(_friendlistItem);

_onInitialize(

InviteFriendsInitialEvent event,

Emitter<InviteFriendsState> emit,

) async {

emit(

);

state.copywith(

inviteFriendsModelobj: state. inviteFriendsModelobj?.copywith(

friendlistItemList: fillFriendlistItemList(),

),

_friendlistItem(

FriendlistItemEvent event,

Emitter<InviteFriendsState> emit,

) {

List<FriendlistItemModel> newList = List<FriendlistItemModel>.from(

state.inviteFriendsModelObj!.friendlistItemList);

newList[event.index] = newList[event.index].copywith(

checkmark: event.checkmark,

);

emit(

state.copywith(

inviteFriendsModelObj:

state.inviteFriendsModelObj?.copywith(friendlistItemList: newList), ),

);

List<FriendlistItemModel> fillFriendlistItemList() {

return [

FriendlistItemModel(

kevinAllsrub: ImageConstant.imgEllipse5,

kevinallsrub1: "Kevin Allsrub",

yourefriends: "Your'e friends on twitter"),

FriendlistItemModel(

kevinAllsrub: ImageConstant.imgEllipse6,

kevinallsrub1: "Sarah Owen",

yourefriends: "Your'e friends on twitter"),

FriendlistItemModel(

kevinAllsrub: ImageConstant.imgEllipse7,

kevinallsrub1: "Rick Onad",

yourefriends: "Your'e friends on twitter"),

FriendlistItemModel(

kevinAllsrub: ImageConstant.imgEllipse8,

kevinallsrub1: "Steven Ford",

yourefriends: "Your'e friends on twitter"),

FriendlistItemModel(

kevinAllsrub: ImageConstant.imgEllipse9,

kevinallsrub1: "Lucas Anna ",

yourefriends: "Your'e friends on twitter"),

FriendlistItemModel(

kevinAllsrub: ImageConstant.imgEllipse10,

kevinallsrub1: "Nabila Remaar",

yourefriends: "Your'e friends on twitter"),

FriendlistItemModel(

kevinAllsrub: ImageConstant.imgEllipse11,

kevinallsrub1: "Rosalia",

yourefriends: "Your'e friends on twitter"),

FriendlistItemModel(

kevinAllsrub: ImageConstant.imgEllipse12,

kevinallsrubi: "Albert of connor",

yourefriends: "Your'e friends on twitter"),

FriendlistItemModel(

kevinAllsrub: ImageConstant.imgEllipse13,

kevinallsrub1: "Melvin Klein",

yourefriends: "Your" e friends on twitter")

}

];