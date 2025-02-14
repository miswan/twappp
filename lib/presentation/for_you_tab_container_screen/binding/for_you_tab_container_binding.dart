import '../controller/for_you_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ForYouTabContainerScreen.
///
/// This class ensures that the ForYouTabContainerController is created when the
/// ForYouTabContainerScreen is first loaded.
class ForYouTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForYouTabContainerController());
  }
}
