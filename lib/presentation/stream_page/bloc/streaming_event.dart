import 'package:equatable/equatable.dart';

part of 'streaming_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// Streaming widget.
/// 
/// Events must be immutable and implement the [Equatable] interface.

abstract class StreamingEvent extends Equatable {
  const StreamingEvent();

  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Streaming widget is first created.
class StreamingInitialEvent extends StreamingEvent {
  @override
  List<Object?> get props => [];
}

class StartStreamingEvent extends StreamingEvent {
  final String streamUrl;
  const StartStreamingEvent(this.streamUrl);

  @override
  List<Object?> get props => [streamUrl];
}

class StopStreamingEvent extends StreamingEvent {
  const StopStreamingEvent();
}

class UpdateStreamingQualityEvent extends StreamingEvent {
  final String quality;
  const UpdateStreamingQualityEvent(this.quality);

  @override
  List<Object?> get props => [quality];
}

class StreamingErrorEvent extends StreamingEvent {
  final String error;
  const StreamingErrorEvent(this.error);

  @override
  List<Object?> get props => [error];
}
