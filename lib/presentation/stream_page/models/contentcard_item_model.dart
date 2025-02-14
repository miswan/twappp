import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

/// This class is used in the [contentcard_item_widget] screen.

// ignore_for_file: must_be_immutable

class ContentcardItemModel extends Equatable {
  ContentcardItemModel(
      {this.twentysevenone, this.rosaliaTwo, this.duration, this.id}) {
    twentysevenone = twentysevenone ?? ImageConstant.img27;

    rosaliaTwo = rosaliaTwo ?? "Rosalia";

    duration = duration ?? "45 minutes ago";

    id = id ?? "";
  }

  String? twentysevenone;

  String? rosaliaTwo;

  String? duration;

  String? id;

  ContentcardItemModel copywith({
    String? twentysevenone,
    String? rosaliaTwo,
    String? duration,
    String? id,
  }) {
    return ContentcardItemModel(
      twentysevenone: twentysevenone ?? this.twentysevenone,
      rosaliaTwo: rosaliaTwo ?? this.rosaliaTwo,
      duration: duration ?? this.duration,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [twentysevenone, rosaliaTwo, duration, id];
}
