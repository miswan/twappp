import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/presentation/stories_container_screen/models/stories_container_model.dart';

/// A controller class for the StoriesContainerScreen.
///
/// This class manages the state of the StoriesContainerScreen, including the
/// current storiesContainerModelObj
class StoriesContainerController extends GetxController {
  Rx<StoriesContainerModel> storiesContainerModelObj =
      StoriesContainerModel().obs;
}
