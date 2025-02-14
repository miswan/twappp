import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

/// This class is used in the [listfortysix_item_widget] screen.

// ignore_for_file: must_be_immutable

class ListfortysixItemModel extends Equatable {
  ListfortysixItemModel({this.fortysixone, this.id}) {
    fortysixone = fortysixone ?? ImageConstant.img46;

    id = id ?? "";
  }

  String? fortysixone;

  String? id;

  ListfortysixItemModel copywith({
    String? fortysixone,
    String? id,
  }) {
    return ListfortysixItemModel(
      fortysixone: fortysixone ?? this.fortysixone,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [fortysixone, id];
}
