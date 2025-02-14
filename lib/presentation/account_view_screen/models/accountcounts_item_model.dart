import 'package:equatable/equatable.dart';

/// This class is used in the [accountcounts_item_widget] screen.

// ignore_for_file: must_be_immutable

class AccountcountsItemModel extends Equatable {
  AccountcountsItemModel({this.post, this.seventyfive, this.id}) {
    post = post ?? "Post";
    seventyfive = seventyfive ?? "75";
    id = id ?? "";
  }

  String? post;
  String? seventyfive;
  String? id;

  AccountcountsItemModel copyWith({
    String? post,
    String? seventyfive,
    String? id,
  }) {
    return AccountcountsItemModel(
      post: post ?? this.post,
      seventyfive: seventyfive ?? this.seventyfive,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [post, seventyfive, id];
}
