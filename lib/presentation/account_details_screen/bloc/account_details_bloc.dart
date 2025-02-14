import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/account_details_model.dart';

import '../models/list_item_model.dart';

import '../models/listfortysix_item_model.dart';

part 'account_details_event.dart';

part 'account_details_state.dart';

/// A bloc that manages the state of a AccountDetails according to the event that is dispatched to it.

class AccountDetailsBloc
    extends Bloc<AccountDetailsEvent, AccountDetailsState> {
  AccountDetailsBloc(AccountDetailsState initialState) : super(initialState) {
    on<AccountDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AccountDetailsInitialEvent event,
    Emitter<AccountDetailsState> emit,
  ) async {
    emit(
      state.copyWith(
        accountDetailsModelObj: state.accountDetailsModelObj?.copyWith(
          listfortysixItemList: fillListfortysixItemList(),
          listItemList: fillListItemList(),
        ),
      ),
    );
  }

  List<ListfortysixItemModel> fillListfortysixItemList() {
    return [
      ListfortysixItemModel(fortysixone: ImageConstant.img46),
      ListfortysixItemModel(fortysixone: ImageConstant.img47),
      ListfortysixItemModel(fortysixone: ImageConstant.img48),
    ];
  }

  List<ListItemModel> fillListItemList() {
    return [
      ListItemModel(image: ImageConstant.imgEllipse15),
      ListItemModel(image: ImageConstant.imgEllipse22),
      ListItemModel(image: ImageConstant.imgEllipse24),
      ListItemModel(image: ImageConstant.imgEllipse26),
      ListItemModel(image: ImageConstant.imgEllipse28),
    ];
  }
}
