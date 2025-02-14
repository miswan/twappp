import 'package:equatable/equatable.dart';
import 'userprofile_item_model.dart';

class ForYouModel extends Equatable {
  final List<UserprofileItemModel> userProfiles;

  const ForYouModel({
    this.userProfiles = const [],
  });

  ForYouModel copyWith({
    List<UserprofileItemModel>? userProfiles,
  }) {
    return ForYouModel(
      userProfiles: userProfiles ?? this.userProfiles,
    );
  }

  @override
  List<Object?> get props => [userProfiles];
}
