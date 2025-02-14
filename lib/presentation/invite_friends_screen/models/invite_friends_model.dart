import 'friendlist_item_model.dart';

class InviteFriendsModel {
  List<FriendlistItemModel> friendlistItemList = [];

  InviteFriendsModel({this.friendlistItemList = const []});

  InviteFriendsModel copyWith({
    List<FriendlistItemModel>? friendlistItemList,
  }) {
    return InviteFriendsModel(
      friendlistItemList: friendlistItemList ?? this.friendlistItemList,
    );
  }
}
