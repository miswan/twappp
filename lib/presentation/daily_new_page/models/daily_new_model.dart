import 'package:equatable/equatable.dart';
import 'profilessection1_item_model.dart';
import 'listforty_one_item_model.dart';

class DailyNewModel extends Equatable {
  final List<Profilessection1ItemModel>? profilessection1ItemList;
  final List<ListfortyOneItemModel>? listfortyOneItemList;

  const DailyNewModel({
    this.profilessection1ItemList,
    this.listfortyOneItemList,
  });

  DailyNewModel copyWith({
    List<Profilessection1ItemModel>? profilessection1ItemList,
    List<ListfortyOneItemModel>? listfortyOneItemList,
  }) {
    return DailyNewModel(
      profilessection1ItemList:
          profilessection1ItemList ?? this.profilessection1ItemList,
      listfortyOneItemList: listfortyOneItemList ?? this.listfortyOneItemList,
    );
  }

  @override
  List<Object?> get props => [profilessection1ItemList, listfortyOneItemList];
}
