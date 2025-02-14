import '../../../core/app_export.dart';

/// This class is used in the [momentcard_item_widget] screen.
class MomentcardItemModel {
  MomentcardItemModel({
    this.image,
    this.username,
    this.timeAgo,
    this.description,
    this.tag1,
    this.tag2,
    this.tag3,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.img40221x382);
    username = username ?? Rx("Rick Onad");
    timeAgo = timeAgo ?? Rx("40 min ago");
    description = description ??
        Rx("This is the moment where i take a photo of a couple hugging in a beautiful rice field.");
    tag1 = tag1 ?? Rx("#huge");
    tag2 = tag2 ?? Rx("#fotography");
    tag3 = tag3 ?? Rx("#nature");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? username;

  Rx<String>? timeAgo;

  Rx<String>? description;

  Rx<String>? tag1;

  Rx<String>? tag2;

  Rx<String>? tag3;

  Rx<String>? id;
}
