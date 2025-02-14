part of 'account_view_bloc.dart';

class AccountViewState extends Equatable {
  final AccountViewModel? accountViewModelobj;

  const AccountViewState({this.accountViewModelobj});

  AccountViewState copywith({AccountViewModel? accountViewModelobj}) {
    return AccountViewState(
      accountViewModelobj: accountViewModelobj ?? this.accountViewModelobj,
    );
  }

  @override
  List<Object?> get props => [accountViewModelobj];
}
