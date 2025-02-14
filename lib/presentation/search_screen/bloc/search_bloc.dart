import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/recentsearches_item_model.dart';
import '../models/search_model.dart';

part 'search_event.dart';
part 'search_state.dart';

/// A bloc that manages the state of a Search according to the event that is dispatched to it.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
    on<SearchQueryChangedEvent>(_onSearchQueryChanged);
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );

    emit(
      state.copyWith(
        searchModelObj: state.searchModelObj?.copyWith(
          recentsearchesItemList: fillRecentSearchesItemList(),
        ),
      ),
    );
  }

  void _onSearchQueryChanged(
    SearchQueryChangedEvent event,
    Emitter<SearchState> emit,
  ) {
    final query = event.query.toLowerCase();
    final allItems = state.searchModelObj?.recentsearchesItemList ?? [];

    if (query.isEmpty) {
      emit(state.copyWith(filteredResults: allItems));
      return;
    }

    final filtered = allItems
        .where((item) => item.kevinallsrub1.toLowerCase().contains(query))
        .toList();

    emit(state.copyWith(filteredResults: filtered));
  }

  List<RecentsearchesItemModel> fillRecentSearchesItemList() {
    return [
      RecentsearchesItemModel(
          kevinAllsrub: ImageConstant.imgEllipse5,
          kevinallsrub1: "Kevin Allsrub",
          yourefriends: "You're friends on twitter"),
      RecentsearchesItemModel(
          kevinAllsrub: ImageConstant.imgEllipse6,
          kevinallsrub1: "Sarah Owen",
          yourefriends: "You're friends on twitter"),
      RecentsearchesItemModel(
          kevinAllsrub: ImageConstant.imgEllipse7,
          kevinallsrub1: "Rick Onad",
          yourefriends: "You're friends on twitter"),
      RecentsearchesItemModel(
          kevinAllsrub: ImageConstant.imgEllipse8,
          kevinallsrub1: "Steven Ford",
          yourefriends: "You're friends on twitter"),
      RecentsearchesItemModel(
          kevinAllsrub: ImageConstant.imgEllipse9,
          kevinallsrub1: "Lucas Anna",
          yourefriends: "You're friends on twitter"),
      RecentsearchesItemModel(
          kevinAllsrub: ImageConstant.imgEllipse10,
          kevinallsrub1: "Nabila Remaar",
          yourefriends: "You're friends on twitter"),
      RecentsearchesItemModel(
          kevinAllsrub: ImageConstant.imgEllipse11,
          kevinallsrub1: "Rosalia",
          yourefriends: "You're friends on twitter"),
    ];
  }
}
