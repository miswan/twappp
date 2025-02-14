part of 'search_state.dart';

/// Represents the state of Search in the application.

// ignore_for_file: must_be_immutable

class Searchstate extends Equatable {
  SearchState({this.searchController, this.searchModelobj});

  TextEditingController? searchController;

  SearchModel? searchModelobj;

  @override
  List<Object?> get props => [searchController, searchModelObj];

  Searchstate copywith({
    TextEditingController? searchController,
    SearchModel? searchModelObj,
  }) {
    return SearchState(
      searchController: searchController ?? this.searchController,
      searchModelObj: searchModelobj ?? this.searchModelobj,
    );
  }
}
