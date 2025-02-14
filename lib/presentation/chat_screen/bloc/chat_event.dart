part of 'chat_bloc.dart';

abstract class ChatEvent extends Equatable {
  const ChatEvent();

  @override
  List<Object> get props => [];
}

class SendMessageEvent extends ChatEvent {
  final ChatMessage message;

  const SendMessageEvent(this.message);

  @override
  List<Object> get props => [message];
}

class LoadMessagesEvent extends ChatEvent {}
