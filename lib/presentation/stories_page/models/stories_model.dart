import '../../../core/app_export.dart';
import 'livelist1_item_model.dart';
import 'viewhierarchylist_item_model.dart';

/// This class defines the variables used in the [stories_page],
/// and is typically used to hold data that is passed between different parts of the application.
class StoriesModel {
  Rx<List<Livelist1ItemModel>> livelist1ItemList = Rx([
    Livelist1ItemModel(textValue: "Roy".obs),
    Livelist1ItemModel(textValue: "Jordan".obs),
    Livelist1ItemModel(textValue: "Angeline".obs),
    Livelist1ItemModel(textValue: "Chrystin".obs),
    Livelist1ItemModel(textValue: "Vrindha".obs)
  ]);

  Rx<List<ViewhierarchylistItemModel>> viewhierarchylistItemList = Rx([
    ViewhierarchylistItemModel(
        liveImage: ImageConstant.img19144x147.obs,
        partyImage: ImageConstant.img192.obs,
        liveText1: "LIVE - We The Fest".obs,
        liveText2: "19 : 00 | Forg Stadium".obs,
        partyText1: "Blue Loyal Party".obs,
        partyText2: "19 : 35 | Latuna Beach".obs)
  ]);
}
