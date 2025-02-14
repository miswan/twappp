import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/friendslist_item_model.dart';

class FriendslistItemWidget extends StatelessWidget {
  final FriendslistItemModel model;

  const FriendslistItemWidget(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.kevinallsrub ?? "",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 4.h),
              Text(
                model.yourefriends ?? "",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: appTheme.deepPurpleA200,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 8.h,
              ),
            ),
            child: Text(
              "Follow",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
