
part of 'turn_on_notifications_state.dart';

/// Represents the state of TurnOnNotifications in the application.

// ignore_for_file: must_be_immutable

class TurnOnNotificationsstate extends Equatable {

TurnOnNotificationsState(

{this.isselectedSwitch = false, this.turnOnNotificationsModelObj});

TurnOnNotificationsModel? turnonNotificationsModelobj;

bool isselectedSwitch;

@override

List<Object?> get props => [isSelectedSwitch, turnOnNotificationsModelObj];

TurnOnNotificationsstate copywith({

bool? isselectedSwitch,

TurnOnNotificationsModel? turnonNotificationsModelObj,

}) {

return TurnOnNotificationsState(

isselectedSwitch: isSelectedSwitch ?? this.isselectedSwitch,

turnonNotificationsModelObj:

turnonNotificationsModelobj ?? this.turnOnNotificationsModelObj,

);

}