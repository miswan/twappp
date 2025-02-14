import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [page_view_screen],

/// and is typically used to hold data that is passed between different parts of the application.

class PageViewModel extends Equatable {
  PageViewModel();

  PageViewModel copywith() {
    return PageViewModel();
  }

  @override
  List<Object?> get props => [];
}
