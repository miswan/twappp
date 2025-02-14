import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/userprofile4_item_model.dart';
import '../models/userprofile5_item_model.dart';

// Events
abstract class MessagesEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadMessages extends MessagesEvent {}

// States
abstract class MessagesState extends Equatable {
  @override
  List<Object> get props => [];
}

class MessagesInitial extends MessagesState {}

class MessagesLoading extends MessagesState {}

class MessagesLoaded extends MessagesState {
  final List<Userprofile4ItemModel> stories;
  final List<Userprofile5ItemModel> messages;

  MessagesLoaded({required this.stories, required this.messages});

  @override
  List<Object> get props => [stories, messages];
}

class MessagesError extends MessagesState {
  final String message;

  MessagesError(this.message);

  @override
  List<Object> get props => [message];
}

// Bloc
class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  MessagesBloc() : super(MessagesInitial()) {
    on<LoadMessages>(_onLoadMessages);
  }

  Future<void> _onLoadMessages(
      LoadMessages event, Emitter<MessagesState> emit) async {
    emit(MessagesLoading());
    try {
      // Simulate API call
      await Future.delayed(Duration(seconds: 1));

      final stories = [
        Userprofile4ItemModel(
          userName: "John Doe",
          imagePath: ImageConstant.defaultAvatar,
        ),
        // Add more stories as needed
      ];

      final messages = [
        Userprofile5ItemModel(
          userName: "Jane Smith",
          lastMessage: "Hello!",
          time: "10:30 AM",
          imagePath: ImageConstant.defaultAvatar,
        ),
        // Add more messages as needed
      ];

      emit(MessagesLoaded(stories: stories, messages: messages));
    } catch (e) {
      emit(MessagesError(e.toString()));
    }
  }
}
