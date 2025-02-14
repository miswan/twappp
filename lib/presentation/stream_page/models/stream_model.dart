import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'contentcard_item_model.dart';

/// This class defines the variables used in the [streaming_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable
class StreamingModel extends Equatable {
  StreamingModel({this.contentcardItemList = const []});

  List<ContentcardItemModel> contentcardItemList;

  StreamingModel copyWith({List<ContentcardItemModel>? contentcardItemList}) {
    return StreamingModel(
      contentcardItemList: contentcardItemList ?? this.contentcardItemList,
    );
  }

  @override
  List<Object?> get props => [contentcardItemList];
}
