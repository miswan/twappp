import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TrendingPostsEvent extends Equatable {
  const TrendingPostsEvent();

  @override
  List<Object?> get props => [];
}

class LoadTrendingPosts extends TrendingPostsEvent {
  final bool isRefresh;

  const LoadTrendingPosts({this.isRefresh = false});

  @override
  List<Object?> get props => [isRefresh];
}

class RefreshTrendingPosts extends TrendingPostsEvent {}

class LoadMoreTrendingPosts extends TrendingPostsEvent {}

class TrendingPostsError extends TrendingPostsEvent {
  final String message;

  const TrendingPostsError(this.message);

  @override
  List<Object?> get props => [message];
}
