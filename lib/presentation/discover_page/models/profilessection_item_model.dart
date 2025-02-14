import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

/// This class is used in the [profilessection_item_widget] screen.

// ignore_for_file: must_be_immutable

class ProfilessectionItemModel extends Equatable {

ProfilessectionItemModel(

{this.nineteenone, this.agnessMonica, this.agnessmonical, this.id}) {

nineteenone = nineteenone ?? ImageConstant.img19;

agnessMonica = agnessMonica ?? ImageConstant.imgPlayDeepPurpleA200;

agnessmonica1 = agnessmonical ?? "Agness Monica";

id = id ?? "";

String? nineteenone;

String? agnessMonica;

String? agnessmonica1;

String? id;

ProfilessectionItemModel copywith({

String? nineteenone,

String? agnessMonica,

String? agnessmonical,

String? id,

}) {

return ProfilessectionItemModel(

nineteenone: nineteenone ?? this.nineteenone,

agnessMonica: agnessMonica ?? this.agnessMonica,

agnessmonical: agnessmonical ?? this.agnessmonica1,

id: id ?? this.id,

);

}

@override

List<Object?> get props => [nineteenOne, agnessMonica, agnessmonical, id];

}