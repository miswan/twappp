import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part of 'search_bloc.dart';

class SearchState extends Equatable {
  final TextEditingController? searchController;
  final SearchModel? searchModelObj;
  final List<RecentsearchesItemModel> filteredResults;

  const SearchState({
    this.searchController,
    this.searchModelObj,
    this.filteredResults = const [],
  });

  SearchState copyWith({
    TextEditingController? searchController,
    SearchModel? searchModelObj,
    List<RecentsearchesItemModel>? filteredResults,
  }) {
    return SearchState(
      searchController: searchController ?? this.searchController,
      searchModelObj: searchModelObj ?? this.searchModelObj,
      filteredResults: filteredResults ?? this.filteredResults,
    );
  }

  @override
  List<Object?> get props => [searchController, searchModelObj, filteredResults];
}

class SearchModel extends Equatable {
  SearchModel({
    this.searchResults = const [],
  });

  final List<String> searchResults;

  @override
  List<Object?> get props => [searchResults];

  SearchModel copyWith({
    List<String>? searchResults,
  }) {
    return SearchModel(
      searchResults: searchResults ?? this.searchResults,
    );
  }
}
