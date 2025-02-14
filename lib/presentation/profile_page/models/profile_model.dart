import 'package:equatable/equatable.dart';
import 'postlist1_item_model.dart';

class ProfileModel extends Equatable {
  final List<Postlist1ItemModel>? postlist1ItemList;

  const ProfileModel({this.postlist1ItemList});

  ProfileModel copyWith({List<Postlist1ItemModel>? postlist1ItemList}) {
    return ProfileModel(
      postlist1ItemList: postlist1ItemList ?? this.postlist1ItemList,
    );
  }

  @override
  List<Object?> get props => [postlist1ItemList];
}
