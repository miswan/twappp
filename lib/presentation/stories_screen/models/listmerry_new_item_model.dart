import 'package:equatable/equatable.dart';

/// This class is used in the [listmerry_new_item_widget] screen.

// ignore_for_file: must_be_immutable

class ListmerryNewItemModel extends Equatable {
  ListmerryNewItemModel({this.merrynewyear, this.price, this.id}) {
    merrynewyear = merrynewyear ?? "Merry New Year";

    price = price ?? "21 : 00 | Latuna Beach";

    id = id ?? "";
  }

  String? merrynewyear;

  String? price;

  String? id;

  ListmerryNewItemModel copywith({
    String? merrynewyear,
    String? price,
    String? id,
  }) {
    return ListmerryNewItemModel(
      merrynewyear: merrynewyear ?? this.merrynewyear,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [merrynewyear, price, id];
}
