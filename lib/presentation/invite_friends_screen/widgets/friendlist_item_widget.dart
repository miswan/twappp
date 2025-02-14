import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../../../widgets/custom_checkbox_button.dart';

import '../models/friendlist_item_model.dart';

// ignore_for_file: must_be_immutable

class FriendlistItemWidget extends StatelessWidget {

FriendlistItemWidget(this.friendlistItemModelObj,

{Key? key, this.changeCheckBox})

: super(

);

key: key,

FriendlistItemModel friendlistItemModelobj;

Function(bool)? changeCheckBox;

@override

Widget build(BuildContext context) {

return Row(

mainAxisAlignment: MainAxisAlignment.center,

children: [

CustomImageView(

),

imagePath: friendlistItemModelObj.kevinAllsrub!,

height: 50.h,

width: 50.h,

radius: BorderRadius.circular(

),

24.h,

SizedBox(width: 24.h),

Expanded(

child: Column(

crossAxisAlignment: CrossAxisAlignment.start,

children: [

Text(

), friendlistItemModelObj.kevinallsrub1!, style: theme.textTheme.titleLarge,

SizedBox(height: 4.h),

Text(

friendlistItemModelObj.yourefriends!, )

style: CustomTextStyles.bodyMediumGray500,

],

),

),

SizedBox(width: 24.h),

CustomCheckboxButton(

value: friendlistItemModelObj.checkmark!,

onChange: (value) {

changeCheckBox?.call(value!);

},

)

],

);

}

}