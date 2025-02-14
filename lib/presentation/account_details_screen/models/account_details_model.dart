import 'list_item_model.dart';
import 'listfortysix_item_model.dart';

class AccountDetailsModel {
  List<ListfortysixItemModel> listfortysixItemList;
  List<ListItemModel> listItemList;

  AccountDetailsModel({
    this.listfortysixItemList = const [],
    this.listItemList = const [],
  });
}
