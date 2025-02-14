import 'package:equatable/equatable.dart';

class ListfortyOneItemModel extends Equatable {
  final String? fortyOne;

  const ListfortyOneItemModel({this.fortyOne});

  @override
  List<Object?> get props => [fortyOne];
}
