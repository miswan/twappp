import 'package:equatable/equatable.dart';

import 'friendslist_item_model.dart';

/// This class defines the variables used in the [friends_screen],

/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable

class FriendsModel extends Equatable {
  FriendsModel({this.friendslistItemList = const []});

  List<FriendslistItemModel> friendslistItemList;

  FriendsModel copywith({List<FriendslistItemModel>? friendslistItemList}) {
    return FriendsModel(
      friendslistItemList: friendslistItemList ?? this.friendslistItemList,
    );
  }

  @override
  List<Object?> get props => [friendslistItemList];
}
