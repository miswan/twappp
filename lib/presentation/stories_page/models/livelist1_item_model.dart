import '../../../core/app_export.dart';

/// This class is used in the [livelist1_item_widget] screen.
class Livelist1ItemModel {
  Livelist1ItemModel({
    this.textValue,
    this.id,
  }) {
    textValue = textValue ?? Rx("Roy");
    id = id ?? Rx("");
  }

  Rx<String>? textValue;

  Rx<String>? id;
}
