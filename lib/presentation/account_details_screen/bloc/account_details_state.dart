part of 'account_details_state.dart';

/// Represents the state of AccountDetails in the application.

// ignore_for_file: must_be_immutable

class AccountDetailsstate extends Equatable {
  AccountDetailsstate({this.accountDetailsModelObj});

  AccountDetailsModel? accountDetailsModelobj;

  @override
  List<Object?> get props => [accountDetailsModelobj];

  AccountDetailsstate copywith({AccountDetailsModel? accountDetailsModelobj}) {
    return AccountDetailsState(
      accountDetailsModelobj:
          accountDetailsModelobj ?? this.accountDetailsModelobj,
    );
  }
}
