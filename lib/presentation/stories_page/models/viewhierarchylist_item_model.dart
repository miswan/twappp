import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchylist_item_widget] screen.
class ViewhierarchylistItemModel {
  ViewhierarchylistItemModel({
    this.liveImage,
    this.partyImage,
    this.liveText1,
    this.liveText2,
    this.partyText1,
    this.partyText2,
    this.id,
  }) {
    liveImage = liveImage ?? Rx(ImageConstant.img19144x147);
    partyImage = partyImage ?? Rx(ImageConstant.img192);
    liveText1 = liveText1 ?? Rx("LIVE - We The Fest");
    liveText2 = liveText2 ?? Rx("19 : 00 | Forg Stadium");
    partyText1 = partyText1 ?? Rx("Blue Loyal Party");
    partyText2 = partyText2 ?? Rx("19 : 35 | Latuna Beach");
    id = id ?? Rx("");
  }

  Rx<String>? liveImage;

  Rx<String>? partyImage;

  Rx<String>? liveText1;

  Rx<String>? liveText2;

  Rx<String>? partyText1;

  Rx<String>? partyText2;

  Rx<String>? id;
}
