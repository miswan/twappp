import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

/// This class is used in the [stories_item_widget] screen.

// ignore_for_file: must_be_immutable

class StoriesItemModel extends Equatable {
  StoriesItemModel({this.royone, this.royTwo, this.id}) {
    royone = royOne ?? ImageConstant.imgEllipse15;

    royTwo = royTwo ?? "Roy";

    id = id ?? "";
  }

  String? royone;

  String? royTwo;

  String? id;

  StoriesItemModel copyWith({
    String? royone,
    String? royTwo,
    String? id,
  }) {
    return StoriesItemModel(
      royone: royOne ?? this.royone,
      royTwo: royTwo ?? this.royTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [royone, royTwo, id];
}
