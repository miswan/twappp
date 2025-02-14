import '../../../core/app_export.dart';

/// This class is used in the [userprofile4_item_widget] screen.
class Userprofile4ItemModel {
  Userprofile4ItemModel({
    this.userImage,
    this.userName,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgEllipse15);
    userName = userName ?? Rx("Roy");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? userName;

  Rx<String>? id;
}
