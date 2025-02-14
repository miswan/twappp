import 'package:equatable/equatable.dart';

import 'accountcounts_item_model.dart';

/// This class defines the variables used in the [account_view_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable

class AccountViewModel extends Equatable {
  AccountViewModel({this.accountcountsItemList = const []});

  List<AccountcountsItemModel> accountcountsItemList;

  AccountViewModel copywith(
      {List<AccountcountsItemModel>? accountcountsItemList}) {
    return AccountViewModel(
      accountcountsItemList:
          accountcountsItemList ?? this.accountcountsItemList,
    );
  }

  @override
  List<Object?> get props => [accountcountsItemList];
}
