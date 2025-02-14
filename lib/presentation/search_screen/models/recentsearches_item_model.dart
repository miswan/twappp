import 'package:equatable/equatable.dart';

/// Model class for recent search items
class RecentsearchesItemModel extends Equatable {
  final String searchQuery;
  final DateTime timestamp;

  const RecentsearchesItemModel({
    required this.searchQuery,
    required this.timestamp,
  });

  factory RecentsearchesItemModel.fromJson(Map<String, dynamic> json) {
    return RecentsearchesItemModel(
      searchQuery: json['searchQuery'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'searchQuery': searchQuery,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  @override
  List<Object?> get props => [searchQuery, timestamp];
}
