import '../../../core/app_export.dart';
import 'userprofile4_item_model.dart';
import 'userprofile5_item_model.dart';

/// This class defines the variables used in the [messages_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel {
  Rx<List<Userprofile4ItemModel>> userprofile4ItemList = Rx([
    Userprofile4ItemModel(
        userImage: ImageConstant.imgEllipse15.obs, userName: "Roy".obs),
    Userprofile4ItemModel(
        userImage: ImageConstant.imgEllipse22.obs, userName: "Jordan".obs),
    Userprofile4ItemModel(
        userImage: ImageConstant.imgEllipse24.obs, userName: "Angeline".obs),
    Userprofile4ItemModel(
        userImage: ImageConstant.imgEllipse26.obs, userName: "Chrystin".obs),
    Userprofile4ItemModel(
        userImage: ImageConstant.imgEllipse28.obs, userName: "Vrindha".obs),
    Userprofile4ItemModel(
        userImage: ImageConstant.imgEllipse24.obs, userName: "Vrindha".obs)
  ]);

  Rx<List<Userprofile5ItemModel>> userprofile5ItemList = Rx([
    Userprofile5ItemModel(
        userImage: ImageConstant.imgEllipse22.obs,
        userName: "Richard Alves".obs,
        userMessage: "Hey bro, where are you?".obs,
        time: "10:00 AM".obs),
    Userprofile5ItemModel(
        userName: "Richard Alves".obs,
        userMessage: "Hey bro, where are you?".obs,
        time: "10:00 AM".obs)
  ]);
}
