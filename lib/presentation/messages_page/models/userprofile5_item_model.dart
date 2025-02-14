import '../../../core/app_export.dart';

/// This class is used in the [userprofile5_item_widget] screen.
class Userprofile5ItemModel {
  Userprofile5ItemModel({
    this.userImage,
    this.userName,
    this.userMessage,
    this.time,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgEllipse22);
    userName = userName ?? Rx("Richard Alves");
    userMessage = userMessage ?? Rx("Hey bro, where are you?");
    time = time ?? Rx("10:00 AM");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? userName;

  Rx<String>? userMessage;

  Rx<String>? time;

  Rx<String>? id;
}
