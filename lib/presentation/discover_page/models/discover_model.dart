import 'package:equatable/equatable.dart';
import 'profilessection_item_model.dart';

class DiscoverModel extends Equatable {
  final List<ProfilessectionItemModel>? profilessectionItemList;

  const DiscoverModel({this.profilessectionItemList});

  DiscoverModel copyWith(
      {List<ProfilessectionItemModel>? profilessectionItemList}) {
    return DiscoverModel(
      profilessectionItemList:
          profilessectionItemList ?? this.profilessectionItemList,
    );
  }

  @override
  List<Object?> get props => [profilessectionItemList];
}
