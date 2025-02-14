import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/presentation/messages_page/models/messages_model.dart';

/// A controller class for the MessagesPage.
///
/// This class manages the state of the MessagesPage, including the
/// current messagesModelObj
class MessagesController extends GetxController {
  MessagesController(this.messagesModelObj);

  Rx<MessagesModel> messagesModelObj;
}
