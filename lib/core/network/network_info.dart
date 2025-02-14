import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:miswan_s_application3/main.dart';

/// Abstract class defining network information interface
/// Provides methods to check connectivity status
abstract class NetworkInfoI {
  /// Checks if device has active internet connection
  Future<bool> isConnected();

  /// Gets current connectivity status
  Future<ConnectivityResult> get connectivityResult;

  /// Stream of connectivity status changes
  Stream<ConnectivityResult> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfoI {
  final Connectivity connectivity;

  static final NetworkInfo _networkInfo = NetworkInfo._internal(Connectivity());

  factory NetworkInfo() => _networkInfo;

  NetworkInfo._internal(this.connectivity);

  @override
  Future<bool> isConnected() async {
    final result = await connectivityResult;
    return result != ConnectivityResult.none;
  }

  @override
  Future<ConnectivityResult> get connectivityResult =>
      connectivity.checkConnectivity();

  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;
}

abstract class Failure {}

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NetworkFailure extends Failure {}

// Exception classes
class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

class NoInternetException implements Exception {
  final String message;

  NoInternetException([this.message = 'No internet connection available']) {
    if (globalMessengerKey.currentState != null) {
      globalMessengerKey.currentState!
          .showSnackBar(SnackBar(content: Text(message)));
    }
  }

  @override
  String toString() => message;
}
