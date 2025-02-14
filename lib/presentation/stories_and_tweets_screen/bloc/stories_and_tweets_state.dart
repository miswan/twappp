part of 'stories_and_tweets_state.dart';

/// Represents the state of StoriesAndTweets in the application.

// ignore_for_file: must_be_immutable

class StoriesAndTweetsState extends Equatable {
  StoriesAndTweetsState({this.searchController, this.storiesAndTweetsModelObj});

  TextEditingController? searchController;

  StoriesAndTweetsModel? storiesAndTweetsModelobj;

  @override
  List<Object?> get props => [searchController, storiesAndTweetsModelObj];

  StoriesAndTweetsstate copywith({
    TextEditingController? searchController,
    StoriesAndTweetsModel? storiesAndTweetsModelobj,
  }) {
    return StoriesAndTweetsstate(
      searchController: searchController ?? this.searchController,
      storiesAndTweetsModelobj:
          storiesAndTweetsModelObj ?? this.storiesAndTweetsModelobj,
    );
  }
}
