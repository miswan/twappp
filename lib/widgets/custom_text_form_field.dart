import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  final Alignment? alignment;
  final double? width;
  final BoxDecoration? boxDecoration;
  final EdgeInsets? scrollPadding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;
  final TextStyle? textstyle;
  final bool obscureText;
  final bool readonly;
  final VoidCallback? onTap;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final int? maxLines;
  final String? hintText;
  final TextStyle? hintstyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillcolor;
  final bool filled;
  final FormFieldValidator<String>? validator;

  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.boxDecoration,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textstyle,
    this.obscureText = false,
    this.readonly = false,
    this.onTap,
    this.maxLines,
    this.hintText,
    this.hintstyle,
    this.contentPadding,
    this.fillcolor,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.borderDecoration,
    this.filled = true,
    this.validator,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _textFormFieldWidget(context))
        : _textFormFieldWidget(context);
  }

  Widget _textFormFieldWidget(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      decoration: boxDecoration,
      child: TextFormField(
        scrollPadding: scrollPadding ??
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        controller: controller,
        focusNode: focusNode,
        onTapOutside: (event) {
          if (focusNode != null) {
            focusNode?.unfocus();
          } else {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        autofocus: autofocus,
        style: textstyle ?? CustomTextStyles.titleSmallPrimary,
        obscureText: obscureText,
        readOnly: readonly,
        onTap: onTap,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _decoration(context),
        validator: validator,
      ),
    );
  }

  InputDecoration _decoration(BuildContext context) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: hintstyle ?? Theme.of(context).textTheme.titleMedium,
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      isDense: true,
      contentPadding: contentPadding ?? EdgeInsets.all(14.h),
      fillColor: fillcolor ?? Theme.of(context).colorScheme.errorContainer,
      filled: filled,
      border: _getDefaultBorder(),
      enabledBorder: _getDefaultBorder(),
      focusedBorder: _getDefaultBorder().copyWith(
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary,
          width: 1,
        ),
      ),
    );
  }

  OutlineInputBorder _getDefaultBorder() {
    return borderDecoration as OutlineInputBorder? ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.h),
          borderSide: BorderSide.none,
        );
  }
}
