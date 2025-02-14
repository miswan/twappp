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
import '../presentation/latest/latest_page.dart';
import '../presentation/discover/discover_page.dart';
import '../presentation/daily_new/daily_new_page.dart';
import '../presentation/trending_tab/trending_tab_page.dart';
import '../presentation/notifications/notifications_page.dart';
import '../presentation/profile/profile_page.dart';
import '../presentation/streaming/streaming_page.dart';

class AppRoutes {
  static const String initialRoute = '/';

  static Map<String, WidgetBuilder> routes = {
    initialRoute: (context) => Container(), // Replace with your initial screen
  };
}
