import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Alignment? alignment;
  final EdgeInsetsGeometry? margin;
  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final bool? isDisabled;
  final TextStyle? buttonTextStyle;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final BoxDecoration? decoration;

  const CustomElevatedButton({
    Key? key,
    this.height,
    this.width,
    this.alignment,
    this.margin,
    required this.text,
    this.onPressed,
    this.buttonStyle,
    this.isDisabled,
    this.buttonTextStyle,
    this.leftIcon,
    this.rightIcon,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final button = ElevatedButton(
      style: buttonStyle,
      onPressed: isDisabled == true ? null : onPressed ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (leftIcon != null) leftIcon!,
          Text(
            text,
            style: buttonTextStyle,
          ),
          if (rightIcon != null) rightIcon!,
        ],
      ),
    );

    return Container(
      height: height ?? 50,
      width: width ?? double.maxFinite,
      alignment: alignment ?? Alignment.center,
      margin: margin,
      decoration: decoration,
      child: button,
    );
  }
}
