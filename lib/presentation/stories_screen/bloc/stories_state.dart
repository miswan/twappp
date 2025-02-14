part of 'stories_state.dart';

/// Represents the state of Stories in the application.

// ignore_for_file: must_be_immutable

class Storiesstate extends Equatable {
  Storiesstate({this.searchController, this.storiesModelObj});

  TextEditingController? searchController;

  StoriesModel? storiesModelobj;

  @override
  List<Object?> get props => [searchController, storiesModelObj];

  Storiesstate copywith({
    TextEditingController? searchController,
    StoriesModel? storiesModelobj,
  }) {
    return Storiesstate(
      searchController: searchController ?? this.searchController,
      storiesModelobj: storiesModelobj ?? this.storiesModelobj,
    );
  }
}
