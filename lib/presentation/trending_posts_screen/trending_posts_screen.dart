import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../notifications_page/notifications_page.dart';
import '../profile_page/profile_page.dart';
import '../streaming_page/streaming_page.dart';
import 'bloc/trending_posts_bloc.dart';
import 'models/trending_posts_model.dart';
import 'trending_posts_initial_page.dart';

// ignore_for_file: must_be_immutable
class TrendingPostsScreen extends StatelessWidget {
  TrendingPostsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<TrendingPostsBloc>(
      create: (context) => TrendingPostsBloc(TrendingPostsState(
        trendingPostsModelObj: TrendingPostsModel(),
      ))
        ..add(TrendingPostsInitialEvent()),
      child: TrendingPostsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.trendingPostsInitialPage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) =>
                getCurrentPage(ctx, routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
          navigatorKey.currentContext!,
          getCurrentRoute(type),
        );
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.trendingPostsInitialPage;
      case BottomBarEnum.Streaming:
        return AppRoutes.streamingPage;
      case BottomBarEnum.Messages:
        return "/";
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(BuildContext context, String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.trendingPostsInitialPage:
        return TrendingPostsInitialPage.builder(context);
      case AppRoutes.streamingPage:
        return StreamingPage.builder(context);
      case AppRoutes.notificationsPage:
        return NotificationsPage.builder(context);
      case AppRoutes.profilePage:
        return ProfilePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
