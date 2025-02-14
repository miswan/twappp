part of 'account_view_state.dart';

/// Represents the state of AccountView in the application.

// ignore_for_file: must_be_immutable

class AccountViewState extends Equatable {

AccountViewState({this.accountViewModelobj});

AccountViewModel? accountViewModelobj;

@override

List<Object?> get props => [accountViewModelobj];

AccountViewState copywith({AccountViewModel? accountviewModelobj}) {

return AccountViewState(

accountViewModelobj: accountViewModelObj ?? this.accountViewModelobj,

);

}