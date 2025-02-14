import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

/// This class is used in the [listsave_one_item_widget] screen.

// ignore_for_file: must_be_immutable

class ListsaveOneItemModel extends Equatable {
  ListsaveOneItemModel({this.saveone, this.newpost, this.id}) {
    saveone = saveOne ?? ImageConstant.imgSavePrimary;

    newpost = newpost ?? "New Post";

    id = id ?? "";
  }

  String? saveone;

  String? newpost;

  String? id;

  ListsaveOneItemModel copywith({
    String? saveone,
    String? newpost,
    String? id,
  }) {
    return ListsaveOneItemModel(
      saveone: saveone ?? this.saveone,
      id: id ?? this.id,
      newpost: newpost ?? this.newpost,
    );
  }

  @override
  List<Object?> get props => [saveone, newpost, id];
}
