import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/streaming_model.dart';

part of 'streaming_bloc.dart';

class StreamingState extends Equatable {
  final TextEditingController? searchController;
  final StreamingModel? streamingModelObj;

  const StreamingState({
    this.searchController,
    this.streamingModelObj,
  });

  StreamingState copyWith({
    TextEditingController? searchController,
    StreamingModel? streamingModelObj,
  }) {
    return StreamingState(
      searchController: searchController ?? this.searchController,
      streamingModelObj: streamingModelObj ?? this.streamingModelObj,
    );
  }

  @override
  List<Object?> get props => [searchController, streamingModelObj];
}

class StreamingInitial extends StreamingState {}
