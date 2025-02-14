import 'package:equatable/equatable.dart';

/// This class is used in the [trendingposts_item_widget] screen.

// ignore_for_file: must_be_immutable

class TrendingpostsItemModel extends Equatable {

TrendingpostsItemModel(

{this.rickonad,

this.time,

this.thisisthe,

this.huge,

this.fotography,

this.nature,

this.id}) {

rickonad rickonad ?? "Rick Onad";

time = time ?? "40 min ago";

thisisthe thisisthe ??

"This is the moment where i take a photo of a couple hugging in a beautiful rice field.";

huge = huge ?? "#huge";

fotography = fotography ?? "#fotography";

nature = nature ?? "#nature";

id = id ?? "";

}

String? rickonad;

String? time;

String? thisisthe;

String? huge;

String? fotography;

String? nature;

String? id;

TrendingpostsItemModel copywith({

String? rickonad,

String? time,

String? thisisthe,

String? huge,

String? fotography,

String? nature,

String? id,

}) {

return TrendingpostsItemModel(

rickonad: rickonad ?? this.rickonad,

time: time ?? this.time,

thisisthe: thisisthe ?? this.thisisthe,

huge: huge ?? this.huge,

fotography: fotography ?? this.fotography,

nature: nature ?? this.nature,

id: id ?? this.id,

);

}

@override

List<Object?> get props =>

[rickonad, time, thisisthe, huge, fotography, nature, id];