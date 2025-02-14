part of 'account_details_bloc.dart';

abstract class AccountDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AccountDetailsInitialEvent extends AccountDetailsEvent {}
