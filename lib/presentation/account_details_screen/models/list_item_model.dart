import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

/// This class is used in the [list_item_widget] screen.

// ignore_for_file: must_be_immutable

class ListItemModel extends Equatable {

ListItemModel({this.image, this.id)) {

image = image ?? ImageConstant.imgEllipse15;

id = id ?? "";

}

String? image;

String? id;

ListItemModel copywith({

String? image,

}) {

String? id, return ListItemModel( image: image ?? this.image, id: id ?? this.id,

);

}

@override

List<Object?> get props => [image, id];

}