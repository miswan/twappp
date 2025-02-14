import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
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
