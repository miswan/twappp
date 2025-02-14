import '../../../core/app_export.dart';

/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {
  Userprofile3ItemModel({
    this.userImage,
    this.userName,
    this.timeAgo,
    this.description,
    this.replyText,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgEllipse21);
    userName = userName ?? Rx("Rizal Reynaldhi");
    timeAgo = timeAgo ?? Rx("35 minutes ago");
    description = description ??
        Rx("Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ");
    replyText = replyText ?? Rx("Reply");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? userName;

  Rx<String>? timeAgo;

  Rx<String>? description;

  Rx<String>? replyText;

  Rx<String>? id;
}
