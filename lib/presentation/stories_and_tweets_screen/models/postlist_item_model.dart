
import 'package:equatable/equatable.dart';

/// This class is used in the [postlist_item_widget] screen.

// ignore_for_file: must_be_immutable

class PostlistItemModel extends Equatable {

PostlistItemModel(

{this.albertoconnor,

this.duration,

this.introduceiam,

this.zipcode,

this.eighthundred,

this.id}) {

albertoconnor = albertoconnor ?? "Albert of connor";

duration = duration ?? "4 hours ago";

introduceiam = introduceiam ??

"Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.";

zipcode = zipcode ?? "2200";

eighthundred = eighthundred ?? "800";

id = id ?? "";

String? albertoconnor;

String? duration;

String? introduceiam;

String? zipcode;

String? eighthundred;

String? id;

PostlistItemModel copywith({

String? albertoconnor,

String? duration,

String? introduceiam,

String? zipcode,

String? eighthundred,

String? id,

}) {

return PostlistItemModel(

albertoconnor: albertoconnor ?? this.albertoconnor,

duration: duration ?? this.duration,

introduceiam: introduceiam ?? this.introduceiam,

zipcode: zipcode ?? this.zipcode,

eighthundred: eighthundred ?? this.eighthundred,

id: id ?? this.id,

);

}

@override

List<Object?> get props =>

[albertoconnor, duration, introduceiam, zipcode, eighthundred, id];

}