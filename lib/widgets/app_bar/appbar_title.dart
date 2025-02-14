import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// A custom app bar title widget that displays text with customizable style
class AppbarTitle extends StatelessWidget {
  /// Creates an [AppbarTitle] widget.
  ///
  /// The [text] parameter must not be null.
  AppbarTitle({
    Key? key,
    required this.text,
    this.onTap,
    this.margin,
  }) : super(key: key);

  /// The text to be displayed in the title
  final String text;

  /// Callback function when the title is tapped
  final Function? onTap;

  /// Optional margin around the title
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: Text(
          text,
          style: CustomTextStyles.titleLargePrimary.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
