
import 'package:flutter/material.dart';

import '../core/app_export.dart';

class CustomSearchView extends StatelessWidget {

CustomSearchView(

{Key? key,

this.alignment,

this.width,

this.boxDecoration,

this.scrollPadding,

this.controller,

this.textInputType TextInputType.text,

this.focusNode, this.autofocus false, this.textstyle, this.maxLines, this.hintText, this.prefix, this.contentPadding,

this.hintstyle,

this.prefixConstraints,

this.suffix,

this.suffixConstraints,

this.borderDecoration,

this.fillcolor,

this.filled true,

this.validator,

this.onChanged})

: super(

key: key, );

final Alignment? alignment;

final double? width;

final BoxDecoration? boxDecoration;

final TextEditingController? scrollPadding;

final TextEditingController? controller;

final FocusNode? focusNode;

final bool? autofocus;

final TextStyle? textstyle;

final TextInputType? textInputType;

final int? maxLines;

final String? hintText;

final TextStyle? hintstyle;

final widget? prefix;

final BoxConstraints? prefixConstraints;

final Widget? suffix;

final BoxConstraints? suffixConstraints;

final EdgeInsets? contentPadding;

final InputBorder? borderDecoration;

final color? fillcolor;

final bool? filled;

final FormFieldValidator<String>? validator;

final Function(String)? onChanged;
@override

Widget build (BuildContext context) {

return alignment != null

? Align(

alignment: alignment ?? Alignment.center,

child: searchViewwidget(context))

searchViewwidget(context);

Widget searchViewwidget(BuildContext context) Container(

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

style: textstyle ?? CustomTextstyles.bodyMediumBluegray400,

keyboardType: textInputType,

maxLines: maxLines ?? 1,

decoration: decoration,

validator: validator,

onChanged: (String value) {

onChanged?.call(value);

},

),

);

InputDecoration get decoration => InputDecoration(

hintText: hintText ?? ""

hintStyle: hintstyle ?? CustomTextStyles.bodyMediumBluegray400,

prefixIcon: Padding(

padding: EdgeInsets.all(

), 15.h,

child: Icon(

Icons.search, ),

color: colors.grey.shade600,

),

prefixIconConstraints: prefixConstraints ??

BoxConstraints(

), maxHeight: 40.h,

suffixIcon: suffix ??

Container( margin: EdgeInsets.symmetric( horizontal: 16.h, vertical: 10.h,

),

child: CustomImageView( height: 18.h, width: 18.h, ),

imagePath: ImageConstant.imgRewindBlueGray4001,

), suffixIconConstraints: suffixConstraints ??

BoxConstraints( ), maxHeight: 40.h,

isDense: true,

contentPadding: contentPadding ?? EdgeInsets.all(10.h),

fillcolor: fillcolor ?? appTheme.gray5001,

filled: filled,

border: borderDecoration ??

OutlineInputBorder( borderRadius: BorderRadius.circular(20.h), borderside: BorderSide.none,

),

enabledBorder: borderDecoration ??

OutlineInputBorder( borderRadius: BorderRadius.circular(20.h), borderside: BorderSide.none,

),

focusedBorder: (borderDecoration ??

OutlineInputBorder( borderRadius: BorderRadius.circular(20.h),

))

.copywith(

borderSide: BorderSide( color: theme.colorscheme.primary, width: 1,

),

),

);