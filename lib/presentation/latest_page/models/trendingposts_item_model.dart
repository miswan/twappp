import 'package:equatable/equatable.dart';

/// This class is used in the [trendingposts_item_widget] screen.

// ignore_for_file: must_be_immutable

class TrendingpostsItemModel extends Equatable {
  final String rickonad;
  final String time;
  final String thisisthe;
  final String huge;
  final String fotography;
  final String nature;

  TrendingpostsItemModel({
    this.rickonad = "",
    this.time = "",
    this.thisisthe = "",
    this.huge = "",
    this.fotography = "",
    this.nature = "",
  });

  @override
  List<Object?> get props =>
      [rickonad, time, thisisthe, huge, fotography, nature];
}
