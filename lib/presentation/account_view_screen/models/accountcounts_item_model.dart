import 'package:equatable/equatable.dart';

/// This class is used in the [accountcounts_item_widget] screen.

// ignore_for_file: must_be_immutable

✓ class Accountcounts ItemModel extends Equatable {

AccountcountsItemModel({this.post, this.seventyfive, this.id}) {

post = post ?? "Post";

seventyfive = seventyfive ?? "75";

id = id ?? "";

String? post;

String? seventyfive;

String? id;

AccountcountsItemModel copywith({

String? post,

String? seventyfive,

String? id,

}) {

return AccountcountsItemModel(

post: post ?? this.post, seventyfive: seventyfive ?? this.seventyfive, id: id ?? this.id,

);

}

@override

List<Object?> get props => [post, seventyfive, id];

}