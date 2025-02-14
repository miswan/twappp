import '../../../core/app_export.dart';

/// This class is used in the [notificationslist_item_widget] screen.
class NotificationslistItemModel {
  NotificationslistItemModel({
    this.userImage,
    this.kevinHasFollowed,
    this.duration,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgEllipse22);
    kevinHasFollowed = kevinHasFollowed ?? Rx("Kevin has followed you");
    duration = duration ?? Rx("1 hour ago");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? kevinHasFollowed;

  Rx<String>? duration;

  Rx<String>? id;
}
