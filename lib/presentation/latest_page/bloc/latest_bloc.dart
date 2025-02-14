import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/latest_model.dart';
import '../models/trendingposts_item_model.dart';

part 'latest_event.dart';
part 'latest_state.dart';

class LatestBloc extends Bloc<LatestEvent, LatestState> {
  LatestBloc(LatestState initialState) : super(initialState) {
    on<LatestInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    LatestInitialEvent event,
    Emitter<LatestState> emit,
  ) async {
    emit(
      state.copyWith(
        latestModelObj: state.latestModelObj?.copyWith(
          trendingpostsItemList: fillTrendingpostsItemList(),
        ),
      ),
    );
  }

  List<TrendingpostsItemModel> fillTrendingpostsItemList() {
    return [
      TrendingpostsItemModel(
          rickonad: "Rick Onad",
          time: "40 min ago",
          thisisthe:
              "This is the moment where i take a photo of a couple hugging in a beautiful rice field.",
          huge: "#huge",
          fotography: "#fotography",
          nature: "#nature"),
      TrendingpostsItemModel(
          rickonad: "Rick Onad",
          time: "40 min ago",
          thisisthe:
              "This is the moment where i take a photo of a couple hugging in a beautiful rice field.",
          huge: "#huge",
          fotography: "#fotography",
          nature: "#nature"),
    ];
  }
}
