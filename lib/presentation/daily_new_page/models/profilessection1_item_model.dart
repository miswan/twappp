
import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

/// This class is used in the [profilessection1_item_widget] screen.

// ignore_for_file: must_be_immutable

class Profilessection1ItemModel extends Equatable {

Profilessection1ItemModel(

{this.nineteenone, this.agnessMonica, this.agnessmonical, this.id)) {

nineteenone = nineteenone ?? ImageConstant.img19;

agnessMonica = agnessMonica ?? ImageConstant.imgPlayDeepPurpleA200;

agnessmonica1 = agnessmonical ?? "Agness Monica";

id = id ?? "";

String? nineteenone;

String? agnessMonica;

String? agnessmonica1;

String? id;

Profilessection1ItemModel copywith({

String? nineteenone,

String? agnessMonica,

String? agnessmonical,

String? id,

}) {

return Profilessection1ItemModel(

nineteenone: nineteenone ?? this.nineteenone,

agnessMonica: agnessMonica ?? this.agnessMonica,

agnessmonical: agnessmonical ?? this.agnessmonical,

id: id ?? this.id,

);

}

@override

List<Object?> get props => [nineteenone, agnessMonica, agnessmonical, id];

}