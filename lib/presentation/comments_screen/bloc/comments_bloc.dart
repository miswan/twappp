import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../data/comments_repository.dart';
import '../models/userprofile3_item_model.dart';

part 'comments_event.dart';
part 'comments_state.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final CommentsRepository repository;

  CommentsBloc({required this.repository}) : super(CommentsInitial()) {
    on<LoadComments>(_onLoadComments);
    on<AddComment>(_onAddComment);
  }

  void _onLoadComments(LoadComments event, Emitter<CommentsState> emit) async {
    emit(CommentsLoading());
    try {
      final comments = await repository.getComments(event.postId);
      emit(CommentsLoaded(comments));
    } catch (e) {
      emit(CommentsError(e.toString()));
    }
  }

  void _onAddComment(AddComment event, Emitter<CommentsState> emit) async {
    try {
      if (state is CommentsLoaded) {
        final currentComments = (state as CommentsLoaded).comments;
        final newComment = await repository.addComment(
          content: event.content,
          postId: event.postId,
          userId: event.userId,
        );
        emit(CommentsLoaded([...currentComments, newComment]));
      }
    } catch (e) {
      emit(CommentsError(e.toString()));
    }
  }
}
