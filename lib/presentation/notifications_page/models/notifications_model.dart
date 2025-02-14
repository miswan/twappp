import 'package:equatable/equatable.dart';
import 'notificationslist_item_model.dart';

class NotificationsModel extends Equatable {
  final List<NotificationslistItemModel>? notificationslistItemList;

  const NotificationsModel({this.notificationslistItemList});

  NotificationsModel copyWith({
    List<NotificationslistItemModel>? notificationslistItemList,
  }) {
    return NotificationsModel(
      notificationslistItemList:
          notificationslistItemList ?? this.notificationslistItemList,
    );
  }

  @override
  List<Object?> get props => [notificationslistItemList];
}
