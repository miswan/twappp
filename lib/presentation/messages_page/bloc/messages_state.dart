part of 'messages_bloc.dart';

abstract class MessagesState extends Equatable {
  const MessagesState();

  @override
  List<Object> get props => [];
}

class MessagesInitial extends MessagesState {}

class MessagesLoading extends MessagesState {}

class MessagesLoaded extends MessagesState {
  final List<Userprofile4ItemModel> stories;
  final List<Userprofile5ItemModel> messages;

  const MessagesLoaded({
    required this.stories,
    required this.messages,
  });

  @override
  List<Object> get props => [stories, messages];
}

class MessagesError extends MessagesState {
  final String message;

  const MessagesError(this.message);

  @override
  List<Object> get props => [message];
}
