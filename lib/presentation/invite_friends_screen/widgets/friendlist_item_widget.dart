import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/friendlist_item_model.dart';

class FriendlistItemWidget extends StatelessWidget {
  final FriendlistItemModel model;
  final Function(bool) changeCheckBox;

  const FriendlistItemWidget(
    this.model, {
    required this.changeCheckBox,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: model.kevinAllsrub,
                height: 50.adaptSize,
                width: 50.adaptSize,
                radius: BorderRadius.circular(25.h),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.kevinallsrub1 ?? "",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      model.yourefriends ?? "",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Checkbox(
            value: model.checkmark ?? false,
            onChanged: (value) => changeCheckBox(value ?? false),
            activeColor: theme.colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
