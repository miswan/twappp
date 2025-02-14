part of 'comments_bloc.dart';

abstract class CommentsEvent extends Equatable {
  const CommentsEvent();

  @override
  List<Object> get props => [];
}

class LoadComments extends CommentsEvent {
  final String postId;
  const LoadComments(this.postId);

  @override
  List<Object> get props => [postId];
}

class AddComment extends CommentsEvent {
  final String content;
  final String postId;
  final String userId;

  const AddComment({
    required this.content,
    required this.postId,
    required this.userId,
  });

  @override
  List<Object> get props => [content, postId, userId];
}
