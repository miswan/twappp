o's Application1 > lib routes > app_routes.dart

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

static const string splashScreen = '/splash_screen';

static const string onboardingOneScreen = '/onboarding_one_screen';

static const String logInScreen = '/log_in_screen';

static const String forgotPasswordScreen = '/forgot_password_screen';

static const string signUpScreen = '/sign_up_screen';

static const string turnonNotificationsScreen

'/turn_on_notifications_screen';

static const string inviteFriendsScreen = '/invite_friends_screen';

static const String latestPage = '/latest_page';

static const String discoverPage = '/discover_page';

static const String dailyNewPage = '/daily_new_page';

static const string trendingPostsScreen = '/trending_posts_screen';

static const string trendingPostsInitialPage = '/trending_posts_initial_page';

static const string trendingTabPage = '/trending_tab_page';

static const string storiesscreen = '/stories_screen';

static const string storiesAndTweetsScreen '/stories_and_tweets_screen';

static const string searchScreen '/search_screen';

static const string livescreen = '/live_screen';

static const string forYouScreen '/for_you_screen';

static const string pageViewScreen = '/page_view_screen';

static const string accountViewScreen '/account_view_screen';

static const string accountDetailsScreen '/account_details_screen';

static const string friendsScreen '/friends_screen';

static const string notificationsPage = '/notifications_page';

static const string profilePage = '/profile_page';

static const string detailedProfileScreen = '/detailed_profile_screen';

static const string streamingPage = '/streaming_page';

static const String appNavigationScreen = '/app_navigation_screen';

static const string initialRoute '/initialRoute';

static Map<String, WidgetBuilder> get routes => {

};

splashScreen: SplashScreen.builder,

onboardingOneScreen: OnboardingOneScreen.builder,

logInScreen: LogInScreen.builder, forgotPasswordScreen: Forgot PasswordScreen.builder,

signUpScreen: SignUpScreen.builder,

turnonNotificationsScreen: TurnOnNotificationsScreen.builder,

inviteFriendsScreen: InviteFriendsScreen.builder,

trendingPostsScreen: TrendingPostsScreen.builder,

storiesScreen: StoriesScreen.builder,

storiesAndTweetsScreen: StoriesAndTweetsScreen.builder,

searchScreen: SearchScreen.builder,

liveScreen: LiveScreen.builder,

forYouScreen: ForYouScreen.builder,

pageViewScreen: PageViewScreen.builder,

accountViewScreen: AccountViewScreen.builder,

accountDetailsScreen: AccountDetailsScreen.builder,

friendsScreen: FriendsScreen.builder,

detailedProfileScreen: DetailedProfileScreen.builder,

appNavigationScreen: AppNavigationScreen.builder,

initialRoute: SplashScreen.builder