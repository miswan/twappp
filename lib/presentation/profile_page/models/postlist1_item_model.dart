import 'package:equatable/equatable.dart';

class Postlist1ItemModel extends Equatable {
  final String? rosaliaTwo;
  final String? duration;
  final String? mostpeople;
  final String? zipcode;
  final String? eighthundred;

  const Postlist1ItemModel({
    this.rosaliaTwo,
    this.duration,
    this.mostpeople,
    this.zipcode,
    this.eighthundred,
  });

  @override
  List<Object?> get props => [
        rosaliaTwo,
        duration,
        mostpeople,
        zipcode,
        eighthundred,
      ];
}
