import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [for_you_screen],

/// and is typically used to hold data that is passed between different parts of the application.

class ForYouModel extends Equatable {
  ForYouModel();

  ForYouModel copywith() {
    return ForYouModel();
  }

  @override
  List<Object?> get props => [];
}
