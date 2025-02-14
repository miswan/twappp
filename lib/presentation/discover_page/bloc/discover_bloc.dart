import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/discover_model.dart';
import '../models/profilessection_item_model.dart';

part 'discover_event.dart';
part 'discover_state.dart';

/// A bloc that manages the state of a Discover according to the event that is dispatched to it.

class DiscoverBloc extends Bloc<DiscoverEvent, DiscoverState> {
  DiscoverBloc() : super(DiscoverState(discoverModelObj: DiscoverModel())) {
    on<DiscoverInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    DiscoverInitialEvent event,
    Emitter<DiscoverState> emit,
  ) async {
    emit(
      state.copyWith(
        discoverModelObj: state.discoverModelObj?.copyWith(
          profilessectionItemList: fillProfilessectionItemList(),
        ),
      ),
    );
  }

  List<ProfilessectionItemModel> fillProfilessectionItemList() {
    return [
      ProfilessectionItemModel(
        nineteenOne: ImageConstant.img19,
        agnessMonica: ImageConstant.imgPlayDeepPurpleA200,
        agnessMonica1: "Agness Monica",
      ),
      ProfilessectionItemModel(nineteenOne: ImageConstant.img19178x146),
      ProfilessectionItemModel(
        nineteenOne: ImageConstant.img191,
        agnessMonica: ImageConstant.imgPlayDeepPurpleA200,
        agnessMonica1: "Windy Wandah",
      ),
    ];
  }
}
