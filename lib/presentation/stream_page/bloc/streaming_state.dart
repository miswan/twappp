part of 'streaming_state.dart';

/// Represents the state of Streaming in the application.

// ignore_for_file: must_be_immutable

class StreamingState extends Equatable {
  StreamingState({this.searchController, this.streamingModelObj});

  TextEditingController? searchController;

  StreamingModel? streamingModelobj;

  @override
  List<Object?> get props => [searchController, streamingModelobj];

  StreamingState copywith({
    TextEditingController? searchController,
    StreamingModel? streamingModelobj,
  }) {
    return StreamingState(
      searchController: searchController ?? this.searchController,
      streamingModelobj: streamingModelobj ?? this.streamingModelObj,
    );
  }
}
