import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/account_view_model.dart';
import '../models/accountcounts_item_model.dart';

part 'account_view_event.dart';
part 'account_view_state.dart';

/// A bloc that manages the state of a AccountView according to the event that is dispatched to it.
class AccountViewBloc extends Bloc<AccountViewEvent, AccountViewState> {
  AccountViewBloc()
      : super(AccountViewState(accountViewModelobj: AccountViewModel())) {
    on<AccountViewInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    AccountViewInitialEvent event,
    Emitter<AccountViewState> emit,
  ) {
    final accountcounts = fillAccountcountsItemList();
    emit(
      state.copywith(
        accountViewModelobj: AccountViewModel(
          accountcountsItemList: accountcounts,
        ),
      ),
    );
  }

  List<AccountcountsItemModel> fillAccountcountsItemList() {
    return [
      AccountcountsItemModel(post: "Post", seventyfive: "75"),
      AccountcountsItemModel(post: "Following", seventyfive: "3400"),
      AccountcountsItemModel(post: "Followers", seventyfive: "6500")
    ];
  }
}
