

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

/// This class is used in the [listforty_one_item_widget] screen.

// ignore_for_file: must_be_immutable

class ListfortyOneItemModel extends Equatable {

ListfortyOneItemModel({this.fortyone, this.id}) {

fortyone = fortyone?? ImageConstant.img40166x166;

id = id ?? "";

}

String? fortyone;

String? id;

ListfortyOneItemModel copywith({ String? fortyone, String? id, return ListfortyOneItemModel( fortyone: fortyone ?? this.fortyone, id: id ?? this.id,

}) {

);

}

@override

List<Object?> get props => [fortyone, id];

}