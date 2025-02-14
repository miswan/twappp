
import 'package:flutter/material.dart';

import '../core/app_export.dart';

extension TextFormFieldstyleHelper on CustomTextFormField {

static OutlineInputBorder get fillGray => OutlineInputBorder(
  borderRadius: BorderRadius.circular(24.h),
  borderSide: BorderSide.none,
);

class CustomTextFormField extends StatelessWidget {

CustomTextFormField({
  Key? key,
  this.scrollPadding,
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
  this.alignment,
  this.width,
  this.boxDecoration,
  this.controller,
  this.focusNode,
  this.textInputAction = TextInputAction.next,
  this.textInputType = TextInputType.text,
  this.prefix,
  this.prefixConstraints,
  this.suffix,
  this.suffixConstraints,
  this.borderDecoration,
  this.filled = true,
  this.validator,
}) : super(key: key);

{Key? key,

this.alignment,

this.width,

this.boxDecoration,

this.controller,

this.focusNode,

this.textInputAction TextInputAction.next,

this.textInputType = TextInputType.text,

this.prefix,

this.prefixConstraints,

this.suffix,

this.suffixConstraints,

this.borderDecoration,

this.filled true,

this.validator})

key: key,

final Alignment? alignment;

final double? width;

final BoxDecoration? boxDecoration;

final TextEditingController? scrollPadding;

final TextEditingController? controller;

final FocusNode? focusNode;

final bool? autofocus;

final TextStyle? textstyle;

final bool? obscureText;

final bool? readonly;

final VoidCallback? onTap;

final TextInputAction? textInputAction;

final TextInputType? textInputType;

final int? maxLines;

final String? hintText;

final TextStyle? hintstyle;

final widget? prefix;

final BoxConstraints? prefixConstraints;

final widget? suffix;

final BoxConstraints? suffixConstraints;

final EdgeInsets? contentPadding;

final InputBorder? borderDecoration;

final color? fillcolor;

final bool? filled;

final FormFieldValidator<String>? validator;
@override

Widget build(BuildContext context) {

return alignment != null

? Align(

alignment: alignment ?? Alignment.center,

child: textFormFieldWidget(context))

: textFormFieldwidget(context);

Widget textFormFieldWidget(BuildContext context) Container(

width: width ?? double.maxFinite,

decoration: boxDecoration,

child: TextFormField(

scrollPadding:

EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),

controller: controller,

focusNode: focusNode,

onTapoutside: (event) {

if (focusNode != null) {

focusNode?.unfocus();

} else {

FocusManager.instance.primaryFocus?.unfocus();

}

},

autofocus: autofocus!,

style: textstyle ?? CustomTextStyles.titleSmallPrimary,

obscureText: obscureText!,

readonly: readonly!,

onTap: () {

},

onTap?.call();

textInputAction: textInputAction,

keyboardType: textInputType,

maxLines: maxLines ?? 1,

decoration: decoration,

validator: validator,

),

);

InputDecoration get decoration => InputDecoration(

hintText: hintText ??

hintStyle: hintstyle ?? theme.textTheme.titleMedium,

prefixIcon: prefix,

prefixIconConstraints: prefixConstraints,

suffixIcon: suffix,

suffixIconConstraints: suffixConstraints,

isDense: true,

contentPadding: contentPadding ?? EdgeInsets.all(14.h),

fillcolor: fillcolor ?? theme.colorscheme.errorContainer,

filled: filled,

border: borderDecoration ??

OutlineInputBorder(

),

borderRadius: BorderRadius.circular(24.h),

borderside: BorderSide.none,

enabledBorder: borderDecoration ??

OutlineInputBorder(

),

borderRadius: BorderRadius.circular(24.h),

borderSide: BorderSide.none,

focusedBorder: (borderDecoration ??

Outline InputBorder(

))

borderRadius: BorderRadius.circular(24.h),

.copywith(

borderSide: BorderSide(

color: theme.colorscheme.primary,

width: 1,

);