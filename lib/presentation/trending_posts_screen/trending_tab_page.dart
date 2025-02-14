import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../core/app_export.dart';
import '../fd/bloc/trending_posts_bloc.dart';
import '../fd/models/postsection_item_model.dart';
import '../fd/models/trending_tab_model.dart';
import '../fd/widgets/postsection_item_widget.dart';

class TrendingTabPage extends StatefulWidget {
  const TrendingTabPage({Key? key}) : super(key: key);

  @override
  TrendingTabPageState createState() => TrendingTabPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<TrendingPostsBloc>(
      create: (context) => TrendingPostsBloc(
        TrendingPostsState(
          trendingTabModelObj: TrendingTabModel(),
        ),
      )..add(TrendingPostsInitialEvent()),
      child: const TrendingTabPage(),
    );
  }
}

class TrendingTabPageState extends State<TrendingTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          _buildPostSection(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostSection(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: BlocSelector<TrendingPostsBloc, TrendingPostsState,
            TrendingTabModel?>(
          selector: (state) => state.trendingTabModelObj,
          builder: (context, trendingTabModelObj) {
            return MasonryGridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 16.h,
              mainAxisSpacing: 16.h,
              itemCount: trendingTabModelObj?.postsectionItemList.length ?? 0,
              itemBuilder: (context, index) {
                PostsectionItemModel model =
                    trendingTabModelObj?.postsectionItemList[index] ??
                        PostsectionItemModel();
                return PostsectionItemWidget(model: model);
              },
            );
          },
        ),
      ),
    );
  }
}
