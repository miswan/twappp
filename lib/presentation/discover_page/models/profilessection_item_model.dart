import 'package:equatable/equatable.dart';

class ProfilessectionItemModel extends Equatable {
  final String? nineteenOne;
  final String? agnessMonica;
  final String? agnessMonica1;

  const ProfilessectionItemModel({
    this.nineteenOne,
    this.agnessMonica,
    this.agnessMonica1,
  });

  @override
  List<Object?> get props => [nineteenOne, agnessMonica, agnessMonica1];
}
