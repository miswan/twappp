import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/app_export.dart';
import 'bloc/account_view_bloc.dart';
import 'widgets/accountcounts_item_widget.dart';

class AccountViewScreen extends StatelessWidget {
  const AccountViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountViewBloc()..add(AccountViewInitialEvent()),
      child: BlocBuilder<AccountViewBloc, AccountViewState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              body: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: state.accountViewModelobj?.accountcountsItemList
                        ?.map((item) => AccountcountsItemWidget(item))
                        .toList() ??
                    [],
              ),
            ),
          );
        },
      ),
    );
  }
}
