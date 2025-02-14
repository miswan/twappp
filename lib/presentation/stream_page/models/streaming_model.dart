import 'package:equatable/equatable.dart';

/// Model class for streaming data
class StreamingModel extends Equatable {
  final String? title;
  final String? description;
  final bool isLive;

  const StreamingModel({
    this.title,
    this.description,
    this.isLive = false,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        isLive,
      ];

  StreamingModel copyWith({
    String? title,
    String? description,
    bool? isLive,
  }) {
    return StreamingModel(
      title: title ?? this.title,
      description: description ?? this.description,
      isLive: isLive ?? this.isLive,
    );
  }
}
