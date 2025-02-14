import 'package:equatable/equatable.dart';

import 'postlist1_item_model.dart';

/// This class defines the variables used in the [profile_page],

/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable

class ProfileModel extends Equatable {
  ProfileModel({this.postlist1ItemList = const []});

  List<Postlist1ItemModel> postlist1ItemList;

  ProfileModel copywith({List<Postlist1ItemModel>? postlist1ItemList}) {
    return ProfileModel(
      postlist1ItemList: postlist1ItemList ?? this.postlist1ItemList,
    );
  }

  @override
  List<Object?> get props => [postlist1ItemList];
}
