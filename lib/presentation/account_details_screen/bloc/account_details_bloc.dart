import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/app_export.dart';
import '../models/account_details_model.dart';
import '../models/list_item_model.dart';
import '../models/listfortysix_item_model.dart';

part 'account_details_event.dart';
part 'account_details_state.dart';

class AccountDetailsBloc
    extends Bloc<AccountDetailsEvent, AccountDetailsState> {
  AccountDetailsBloc(AccountDetailsState initialState) : super(initialState) {
    on<AccountDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AccountDetailsInitialEvent event,
    Emitter<AccountDetailsState> emit,
  ) async {
    emit(state.copyWith(
        accountDetailsModelObj: AccountDetailsModel(
      listfortysixItemList:
          List.generate(4, (index) => ListfortysixItemModel()),
      listItemList: List.generate(4, (index) => ListItemModel()),
    )));
  }
}
