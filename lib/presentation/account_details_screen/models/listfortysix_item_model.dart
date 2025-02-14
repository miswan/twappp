import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

/// This class is used in the [listfortysix_item_widget] screen.

// ignore_for_file: must_be_immutable

class ListfortysixItemModel extends Equatable {
  ListfortysixItemModel({this.image}) {
    image = image ?? ImageConstant.img46;
  }

  String? image;

  ListfortysixItemModel copywith({
    String? image,
  }) {
    return ListfortysixItemModel(
      image: image ?? this.image,
    );
  }

  @override
  List<Object?> get props => [image];
}
