import 'package:equatable/equatable.dart';

/// This class is used in the [postsection_item_widget] screen.
// ignore_for_file: must_be_immutable
class PostsectionItemModel extends Equatable {
  PostsectionItemModel({
    this.rizalreynaldhi,
    this.duration,
    this.description,
    this.bali,
    this.dreams,
    this.zipcode,
    this.eighthundred,
    this.id,
  }) {
    rizalreynaldhi = rizalreynaldhi ?? "Rizal Reynaldhi";
    duration = duration ?? "35 minutes ago";
    description = description ??
        "Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dream will come true";
    bali = bali ?? "#Bali";
    dreams = dreams ?? "#dreams";
    zipcode = zipcode ?? "2200";
    eighthundred = eighthundred ?? "800";
    id = id ?? "";
  }

  String? rizalreynaldhi;
  String? duration;
  String? description;
  String? bali;
  String? dreams;
  String? zipcode;
  String? eighthundred;
  String? id;

  PostsectionItemModel copyWith({
    String? rizalreynaldhi,
    String? duration,
    String? description,
    String? bali,
    String? dreams,
    String? zipcode,
    String? eighthundred,
    String? id,
  }) {
    return PostsectionItemModel(
      rizalreynaldhi: rizalreynaldhi ?? this.rizalreynaldhi,
      duration: duration ?? this.duration,
      description: description ?? this.description,
      bali: bali ?? this.bali,
      dreams: dreams ?? this.dreams,
      zipcode: zipcode ?? this.zipcode,
      eighthundred: eighthundred ?? this.eighthundred,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
        rizalreynaldhi,
        duration,
        description,
        bali,
        dreams,
        zipcode,
        eighthundred,
        id,
      ];
}
