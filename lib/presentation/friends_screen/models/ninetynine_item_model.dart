import '../../../core/app_export.dart';

/// This class is used in the [ninetynine_item_widget] screen.
class NinetynineItemModel {
  NinetynineItemModel({
    this.trash,
    this.id,
  }) {
    trash = trash ?? Rx(ImageConstant.imgTrash);
    id = id ?? Rx("");
  }

  Rx<String>? trash;

  Rx<String>? id;
}
