part of 'chat_bloc.dart';

abstract class ChatState extends Equatable {
  final List<ChatMessage>? messages;

  const ChatState({this.messages});

  @override
  List<Object?> get props => [messages];
}

class ChatInitial extends ChatState {}

class ChatLoading extends ChatState {}

class ChatLoaded extends ChatState {
  const ChatLoaded({required List<ChatMessage> messages})
      : super(messages: messages);
}

class ChatError extends ChatState {
  final String error;

  const ChatError(this.error);

  @override
  List<Object?> get props => [error, messages];
}
