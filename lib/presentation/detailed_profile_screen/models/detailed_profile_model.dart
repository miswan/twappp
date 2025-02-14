import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [detailed_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.

class DetailedProfileModel {
  final String? username;
  final String? email;
  final String? phone;
  final String? gender;
  final String? dateOfBirth;

  DetailedProfileModel({
    this.username,
    this.email,
    this.phone,
    this.gender,
    this.dateOfBirth,
  });
}
