import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

/// This class is used in the [profilessection1_item_widget] screen.

// ignore_for_file: must_be_immutable

class Profilessection1ItemModel extends Equatable {
  final String? nineteenOne;
  final String? agnessMonica;
  final String? agnessMonica1;

  const Profilessection1ItemModel({
    this.nineteenOne,
    this.agnessMonica,
    this.agnessMonica1,
  });

  @override
  List<Object?> get props => [nineteenOne, agnessMonica, agnessMonica1];
}
