import '../../../core/app_export.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [trending_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingTabContainerModel {
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(
        userImage: ImageConstant.imgEllipse15.obs, userName: "Roy".obs),
    Userprofile1ItemModel(
        userImage: ImageConstant.imgEllipse22.obs, userName: "Jordan".obs),
    Userprofile1ItemModel(
        userImage: ImageConstant.imgEllipse26.obs, userName: "Chrystin".obs),
    Userprofile1ItemModel(
        userImage: ImageConstant.imgEllipse28.obs, userName: "Vrindha".obs),
    Userprofile1ItemModel(userName: "Angeline".obs)
  ]);
}
