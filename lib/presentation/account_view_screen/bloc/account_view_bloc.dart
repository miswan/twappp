import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/account_view_model.dart';

import '../models/accountcounts_item_model.dart';

part 'account_view_event.dart';

part 'account_view_state.dart';

/// A bloc that manages the state of a AccountView according to the event that is dispatched to it.

class AccountViewBloc extends Bloc<AccountViewEvent, AccountViewState> {

AccountViewBloc(AccountViewState initialstate): super(initialstate) {

on<AccountViewInitialEvent>(_onInitialize);

}

_onInitialize(

AccountViewInitialEvent event,

Emitter<AccountViewState> emit,

) async {

emit(

state.copywith(

accountViewModelobj: state.accountViewModelobj?.copywith(

accountcountsItemList: fillAccountcountsItemList(),

),

),

);

}

List<AccountcountsItemModel> fillAccountcountsItemList() {

return [

AccountcountsItemModel(post: "Post", seventyfive: "75"),

AccountcountsItemModel(post: "Following", seventyfive: "3400"),

AccountcountsItemModel (post: "Followers", seventyfive: "6500")

];

}