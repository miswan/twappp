import '../../../core/app_export.dart';
import 'momentcard_item_model.dart';

/// This class defines the variables used in the [trending_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingModel {
  Rx<List<MomentcardItemModel>> momentcardItemList = Rx([
    MomentcardItemModel(
        image: ImageConstant.img40221x382.obs,
        username: "Rick Onad".obs,
        timeAgo: "40 min ago".obs,
        description:
            "This is the moment where i take a photo of a couple hugging in a beautiful rice field."
                .obs,
        tag1: "#huge".obs,
        tag2: "#fotography".obs,
        tag3: "#nature".obs),
    MomentcardItemModel(
        image: ImageConstant.img401.obs,
        username: "Rick Onad".obs,
        timeAgo: "40 min ago".obs,
        description:
            "This is the moment where i take a photo of a couple hugging in a beautiful rice field."
                .obs,
        tag1: "#huge".obs,
        tag2: "#fotography".obs,
        tag3: "#nature".obs)
  ]);
}
