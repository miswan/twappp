import '../../../core/app_export.dart';
import 'userprofile3_item_model.dart';

/// This class defines the variables used in the [comments_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CommentsModel {
  Rx<List<Userprofile3ItemModel>> userprofile3ItemList = Rx([
    Userprofile3ItemModel(
        userImage: ImageConstant.imgEllipse21.obs,
        userName: "Rizal Reynaldhi".obs,
        timeAgo: "35 minutes ago".obs,
        description:
            "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. "
                .obs,
        replyText: "Reply".obs)
  ]);
}
