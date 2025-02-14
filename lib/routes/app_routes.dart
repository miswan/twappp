import 'package:flutter/material.dart';
import '../presentation/account_details_screen/account_details_screen.dart';
import '../presentation/account_view_screen/account_view_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/detailed_profile_screen/detailed_profile_screen.dart';
import '../presentation/for_you_screen/for_you_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/friends_screen/friends_screen.dart';
import '../presentation/invite_friends_screen/invite_friends_screen.dart';
import '../presentation/live_screen/live_screen.dart';
import '../presentation/log_in_screen/log_in_screen.dart';
import '../presentation/onboarding_one_screen/onboarding_one_screen.dart';
import '../presentation/page_view_screen/page_view_screen.dart';
import '../presentation/search_screen/search_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/stories_and_tweets_screen/stories_and_tweets_screen.dart';
import '../presentation/stories_screen/stories_screen.dart';
import '../presentation/trending_posts_screen/trending_posts_screen.dart';
import '../presentation/turn_on_notifications_screen/turn_on_notifications_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String onboardingOneScreen = '/onboarding_one_screen';
  static const String logInScreen = '/log_in_screen';
  static const String forgotPasswordScreen = '/forgot_password_screen';
  static const String signUpScreen = '/sign_up_screen';
  static const String turnOnNotificationsScreen =
      '/turn_on_notifications_screen';
  static const String inviteFriendsScreen = '/invite_friends_screen';
  static const String latestPage = '/latest_page';
  static const String discoverPage = '/discover_page';
  static const String dailyNewPage = '/daily_new_page';
  static const String trendingPostsScreen = '/trending_posts_screen';
  static const String trendingPostsInitialPage = '/trending_posts_initial_page';
  static const String trendingTabPage = '/trending_tab_page';
  static const String storiesScreen = '/stories_screen';
  static const String storiesAndTweetsScreen = '/stories_and_tweets_screen';
  static const String searchScreen = '/search_screen';
  static const String liveScreen = '/live_screen';
  static const String forYouScreen = '/for_you_screen';
  static const String pageViewScreen = '/page_view_screen';
  static const String accountViewScreen = '/account_view_screen';
  static const String accountDetailsScreen = '/account_details_screen';
  static const String friendsScreen = '/friends_screen';
  static const String notificationsPage = '/notifications_page';
  static const String profilePage = '/profile_page';
  static const String detailedProfileScreen = '/detailed_profile_screen';
  static const String streamingPage = '/streaming_page';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: (context) => SplashScreen(),
        onboardingOneScreen: (context) => OnboardingOneScreen(),
        logInScreen: (context) => LogInScreen(),
        forgotPasswordScreen: (context) => ForgotPasswordScreen(),
        signUpScreen: (context) => SignUpScreen(),
        turnOnNotificationsScreen: (context) => TurnOnNotificationsScreen(),
        inviteFriendsScreen: (context) => InviteFriendsScreen(),
        trendingPostsScreen: (context) => TrendingPostsScreen(),
        storiesScreen: (context) => StoriesScreen(),
        storiesAndTweetsScreen: (context) => StoriesAndTweetsScreen(),
        searchScreen: (context) => SearchScreen(),
        forYouScreen: (context) => ForYouScreen(),
        pageViewScreen: (context) => PageViewScreen(),
        accountViewScreen: (context) => AccountViewScreen(),
        accountDetailsScreen: (context) => AccountDetailsScreen(),
        friendsScreen: (context) => FriendsScreen(),
        detailedProfileScreen: (context) => DetailedProfileScreen(),
        appNavigationScreen: (context) => AppNavigationScreen(),
        initialRoute: (context) => SplashScreen(),
      };
}
