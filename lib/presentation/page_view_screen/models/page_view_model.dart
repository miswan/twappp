import 'package:equatable/equatable.dart';

/// Model class for PageView screen
class PageViewModel extends Equatable {
  PageViewModel({
    this.id,
    this.title,
    this.content,
  });

  final String? id;
  final String? title;
  final String? content;

  @override
  List<Object?> get props => [
        id,
        title,
        content,
      ];

  PageViewModel copyWith({
    String? id,
    String? title,
    String? content,
  }) {
    return PageViewModel(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
    );
  }
}
