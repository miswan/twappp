import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

class UserprofileItemModel extends Equatable {
  UserprofileItemModel({
    String? username,
    String? imageUrl,
  }) {
    username = username ?? "";
    imageUrl = imageUrl ?? "";
    this.username = BehaviorSubject<String>.seeded(username);
    this.imageUrl = BehaviorSubject<String>.seeded(imageUrl);
  }

  late final BehaviorSubject<String> username;
  late final BehaviorSubject<String> imageUrl;

  @override
  List<Object?> get props => [username, imageUrl];
}
