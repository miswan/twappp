import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/app_export.dart';
import '../la/bloc/latest_bloc.dart';
import '../la/models/latest_model.dart';
import '../la/models/trendingposts_item_model.dart';
import '../la/widgets/trendingposts_item_widget.dart';

class LatestPage extends StatefulWidget {
  const LatestPage({Key? key}) : super(key: key);

  @override
  LatestPageState createState() => LatestPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<LatestBloc>(
      create: (context) => LatestBloc(
        LatestState(
          latestModelObj: LatestModel(),
        ),
      )..add(LatestInitialEvent()),
      child: const LatestPage(),
    );
  }
}

class LatestPageState extends State<LatestPage>
    with AutomaticKeepAliveClientMixin<LatestPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 24.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 2.h),
              _buildTrendingPosts(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrendingPosts(BuildContext context) {
    return Expanded(
      child: BlocSelector<LatestBloc, LatestState, LatestModel?>(
        selector: (state) => state.latestModelObj,
        builder: (context, latestModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 24.h);
            },
            itemCount: latestModelObj?.trendingpostsItemList.length ?? 0,
            itemBuilder: (context, index) {
              TrendingpostsItemModel model =
                  latestModelObj?.trendingpostsItemList[index] ??
                      TrendingpostsItemModel();
              return TrendingpostsItemWidget(model: model);
            },
          );
        },
      ),
    );
  }
}
