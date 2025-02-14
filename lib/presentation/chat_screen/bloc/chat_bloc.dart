import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/chat_message.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatInitial()) {
    on<SendMessageEvent>(_onSendMessage);
    on<LoadMessagesEvent>(_onLoadMessages);
  }

  void _onSendMessage(SendMessageEvent event, Emitter<ChatState> emit) {
    final currentMessages = state.messages ?? [];
    emit(ChatLoaded(messages: [...currentMessages, event.message]));
  }

  void _onLoadMessages(LoadMessagesEvent event, Emitter<ChatState> emit) {
    // TODO: Implement loading messages from repository
    emit(ChatLoaded(messages: []));
  }
}
