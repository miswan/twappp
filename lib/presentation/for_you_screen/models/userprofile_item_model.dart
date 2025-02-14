import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.username,
    this.id,
  }) {
    username = username ?? Rx("Elisa Carl");
    id = id ?? Rx("");
  }

  Rx<String>? username;

  Rx<String>? id;
}
