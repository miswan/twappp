
import 'package:equatable/equatable.dart';

/// This class is used in the [postlist1_item_widget] screen.

// ignore_for_file: must_be_immutable

class Postlist1ItemModel extends Equatable {

Postlist1ItemModel(

{this.rosaliaTwo,

this.duration,

this.mostpeople,

this.zipcode,

this.eighthundred,

this.id}) {

rosaliaTwo = rosaliaTwo ?? "Rosalia";

duration = duration ?? "35 minutes ago";

mostpeople = mostpeople ??

"Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ";

zipcode = zipcode ?? "2200";

eighthundred = eighthundred ?? "800";

id = id ?? "";

String? rosaliaTwo;

String? duration;

String? mostpeople;

String? zipcode;

String? eighthundred;

String? id;

Postlist1ItemModel copywith({

String? rosaliaTwo,

String? duration,

String? mostpeople,

String? zipcode,

String? eighthundred,

String? id,

}) {

return Postlist1ItemModel(

rosaliaTwo: rosaliaTwo ?? this.rosaliaTwo,

mostpeople: mostpeople ?? this.mostpeople,

duration: duration ?? this.duration, zipcode: zipcode ?? this.zipcode, eighthundred: eighthundred ?? this.eighthundred, id: id ?? this.id, ); }

@override

List<Object?> get props =>

[rosaliaTwo, duration, mostpeople, zipcode, eighthundred, id];

}