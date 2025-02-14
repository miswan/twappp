import '../../../core/app_export.dart';
import 'package:equatable/equatable.dart';

/// This class is used in the [notificationslist_item_widget] screen.
class NotificationslistItemModel extends Equatable {
  final String? image;
  final String? kevinhas;
  final String? duration;

  NotificationslistItemModel({
    this.image,
    this.kevinhas,
    this.duration,
  });

  NotificationslistItemModel copyWith({
    String? image,
    String? kevinhas,
    String? duration,
  }) {
    return NotificationslistItemModel(
      image: image ?? this.image,
      kevinhas: kevinhas ?? this.kevinhas,
      duration: duration ?? this.duration,
    );
  }

  @override
  List<Object?> get props => [image, kevinhas, duration];
}
