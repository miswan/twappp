import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../trending_page/widgets/momentcard_item_widget.dart';
import 'package:miswan_s_application3/core/app_export.dart';
import 'bloc/trending_bloc.dart';
import '../../core/di/injection_container.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TrendingBloc>()..add(LoadTrendingData()),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillPrimary,
            child: Column(
              children: [
                SizedBox(height: 27.v),
                _buildMomentCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMomentCard() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: BlocBuilder<TrendingBloc, TrendingState>(
          builder: (context, state) {
            if (state is TrendingLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is TrendingError) {
              return Center(child: Text(state.message));
            } else if (state is TrendingLoaded) {
              return ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(height: 24.v),
                itemCount: state.moments.length,
                itemBuilder: (context, index) {
                  return MomentcardItemWidget(state.moments[index]);
                },
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
