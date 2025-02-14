
import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

/// This class is used in the [recentsearches_item_widget] screen.

// ignore_for_file: must_be_immutable

class Recentsearches ItemModel extends Equatable {

Recent searchesItemModel(

{this.kevinAllsrub, this.kevinallsrub1, this.yourefriends, this.id}) {

kevinAllsrub = kevinAllsrub ?? ImageConstant.imgEllipse5;

kevinallsrub1 = kevinallsrub1 ?? "Kevin Allsrub";

yourefriends = yourefriends ?? "Your'e friends on twitter";

id = id ?? "";

}

String? kevinAllsrub;

String? kevinallsrub1;

String? yourefriends;

String? id;

Recent searchesItemModel copywith({

String? kevinAllsrub,

String? kevinallsrub1,

String? yourefriends,

String? id,

}) {

return Recent searches ItemModel(

kevinAllsrub: kevinAllsrub ?? this.kevinAllsrub,

kevinallsrub1: kevinallsrub1 ?? this.kevinallsrub1,

yourefriends: yourefriends ?? this.yourefriends,

id: id ?? this.id,

);

}

@override

List<Object?> get props => [kevinAllsrub, kevinallsrubi, yourefriends, id];

}