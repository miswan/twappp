import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/for_you_model.dart';

part 'for_you_event.dart';
part 'for_you_state.dart';

class ForYouBloc extends Bloc<ForYouEvent, ForYouState> {
  ForYouBloc(ForYouState initialState) : super(initialState) {
    on<ForYouInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ForYouInitialEvent event,
    Emitter<ForYouState> emit,
  ) async {
    final userProfiles = [
      UserprofileItemModel(
        username: "Lucas Anna",
        imageUrl: ImageConstant.imgEllipse9,
      ),
      // Add more sample profiles as needed
    ];

    emit(state.copyWith(
      forYouModelObj: ForYouModel(userProfiles: userProfiles),
    ));
  }
}
