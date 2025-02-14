part of 'account_details_bloc.dart';

class AccountDetailsState extends Equatable {
  final AccountDetailsModel? accountDetailsModelObj;
  final bool isLoading;

  const AccountDetailsState({
    this.accountDetailsModelObj,
    this.isLoading = false,
  });

  AccountDetailsState copyWith({
    AccountDetailsModel? accountDetailsModelObj,
    bool? isLoading,
  }) {
    return AccountDetailsState(
      accountDetailsModelObj:
          accountDetailsModelObj ?? this.accountDetailsModelObj,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [accountDetailsModelObj, isLoading];
}
