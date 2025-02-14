import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [trending_posts_screen],

/// and is typically used to hold data that is passed between different parts of the application.

class TrendingPostsModel extends Equatable {
  TrendingPostsModel();

  TrendingPostsModel copywith() {
    return TrendingPostsModel();
  }

  @override
  List<Object?> get props => [];
}
