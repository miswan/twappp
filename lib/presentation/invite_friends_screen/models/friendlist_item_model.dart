
import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

/// This class is used in the [friendlist_item_widget] screen.

// ignore_for_file: must_be_immutable

class FriendlistItemModel extends Equatable {

FriendlistItemModel(

{this.kevinAllsrub,

this.kevinallsrub1, this.yourefriends, this.checkmark,

this.id}) {

kevinAllsrub = kevinAllsrub ?? ImageConstant.imgEllipse5;

kevinallsrub1 = kevinallsrub1 ?? "Kevin Allsrub";

yourefriends = yourefriends ?? "Youre friends on twitter";

checkmark = checkmark ?? false;

id = id ?? "";

String? kevinAllsrub;

String? kevinallsrub1;

String? yourefriends;

bool? checkmark;

String? id;

FriendlistItemModel copywith({

String? kevinAllsrub,

String? kevinallsrubi,

String? yourefriends,

bool? checkmark,

String? id,

}) {

return FriendlistItemModel(

kevinAllsrub: kevinAllsrub ?? this.kevinAllsrub,

kevinallsrub1: kevinallsrub1 ?? this.kevinallsrub1, yourefriends: yourefriends ?? this.yourefriends, checkmark: checkmark ?? this.checkmark, id: id ?? this.id, );

}

@override

List<Object?> get props =>

[kevinAllsrub, kevinallsrubi, yourefriends, checkmark, id];

}