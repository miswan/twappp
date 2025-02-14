import 'package:equatable/equatable.dart';

part of 'stories_and_tweets_event.dart';

/// Abstract class for all events that can be dispatched from the
/// StoriesAndTweets widget.
///
/// Events must be immutable and implement the [Equatable] interface.
abstract class StoriesAndTweetsEvent extends Equatable {
  const StoriesAndTweetsEvent();

  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the StoriesAndTweets widget is first created.
class StoriesAndTweetsInitialEvent extends StoriesAndTweetsEvent {}

class LoadMoreStoriesEvent extends StoriesAndTweetsEvent {}

class LoadMoreTweetsEvent extends StoriesAndTweetsEvent {}

class RefreshStoriesAndTweetsEvent extends StoriesAndTweetsEvent {}

class LoadStoriesAndTweetsEvent extends StoriesAndTweetsEvent {
  final bool isRefresh;
  
  const LoadStoriesAndTweetsEvent({this.isRefresh = false});

  @override
  List<Object?> get props => [isRefresh];
}

class ToggleStoriesTweetsViewEvent extends StoriesAndTweetsEvent {
  final bool showStories;
  
  const ToggleStoriesTweetsViewEvent({required this.showStories});

  @override
  List<Object?> get props => [showStories];
}
