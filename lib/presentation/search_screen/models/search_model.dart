import 'package:equatable/equatable.dart';
import 'recentsearches_item_model.dart';

class SearchModel extends Equatable {
  final List<RecentsearchesItemModel> recentsearchesItemList;

  const SearchModel({
    this.recentsearchesItemList = const [],
  });

  SearchModel copyWith({
    List<RecentsearchesItemModel>? recentsearchesItemList,
  }) {
    return SearchModel(
      recentsearchesItemList:
          recentsearchesItemList ?? this.recentsearchesItemList,
    );
  }

  @override
  List<Object?> get props => [recentsearchesItemList];
}
