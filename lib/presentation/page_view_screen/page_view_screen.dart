
import 'package:flutter/material.dart';

import '../../widgets/app_bar/appbar_leading_image.dart';

import '../../core/app_export.dart';

import '../../widgets/app_bar/appbar_trailing_image.dart';

import '../../widgets/app_bar/custom_app_bar.dart';

import '../../widgets/custom_icon_button.dart';

import '../../widgets/custom_text_form_field.dart';

import 'bloc/page_view_bloc.dart';

import 'models/page_view_model.dart';

class PageViewScreen extends StatelessWidget {

const PageViewScreen({Key? key})

: super(

key: key,

);

static Widget builder (BuildContext context) {

return BlocProvider<PageViewBloc>(

create: (context) => PageViewBloc(PageViewState( pageViewModelobj: PageViewModel(), )) ..add(PageViewInitialEvent()),

child: PageViewScreen(), );

@override

Widget build (BuildContext context) {

return SafeArea(

child: Scaffold( extendBody: true, extendBodyBehindAppBar: true, appBar: _buildAppbar (context), width: double.maxFinite, height: SizeUtils.height, decoration: BoxDecoration( image: DecorationImage(

body: Container(

color: theme.colorscheme.primary,

image: AssetImage( ImageConstant.imgPageView, ),

fit: BoxFit.fill, ), ),

child: Container(

margin: EdgeInsets.only(top: 52.h),

child: SingleChildScrollView( child: Container( width: double.maxFinite, padding: EdgeInsets.symmetric( horizontal: 16.h, vertical: 38.h, ), child: Column(

crossAxisAlignment: CrossAxisAlignment.start, children: [

SizedBox(height: 320.h),

Container(

padding: EdgeInsets.symmetric( horizontal: 20.h, vertical: 4.h, ), decoration: BoxDecoration( color: appTheme.deepPurpleA200, borderRadius: BorderRadiusstyle.roundedBorder14, ), child: Column( mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [ SizedBox(height: 2.h), Text( "lbl_4_6".tr, style: CustomTextStyles.titleSmallPrimary, ) ), ),

SizedBox(height: 22.h), Text( "msg_haliford_luxury_hotel".tr, maxLines: 2, overflow: Textoverflow.ellipsis, style: theme.textTheme.displayMedium,

),

SizedBox(height: 22.h), Text( "msg_halford_hotel_is".tr, maxLines: 4, overflow: Textoverflow.ellipsis, style: theme.textTheme.bodySmall!.copyWith( height: 1.50, ), ),

SizedBox(height: 104.h), _buildCommentSection(context)

1,

], ), ), ], ), ), ), ), ), ); 
/// Section Widget

PreferredSizeWidget_buildAppbar (BuildContext context) {

return CustomAppBar(

leadingwidth: 24.h,

leading: AppbarLeadingImage(

imagePath: ImageConstant.imgArrowBack,

margin: EdgeInsets.only(

left: 16.h,

top: 13.h,

bottom: 15.h,

),

),

actions: [

AppbarTrailingImage(

imagePath: ImageConstant.imgQuestionPrimary,

margin: EdgeInsets.only(

top: 13.h,

bottom: 15.h,

),

),

AppbarTrailingImage(

imagePath: ImageConstant.imgGridPrimary,

margin: EdgeInsets.fromLTRB(24.h, 13.h, 16.h, 15.h), )

],

);

/// Section Widget

Widget_buildCommentSection(BuildContext context) {

return SizedBox(

width: double.maxFinite,

child: Row(

children: [

Expanded(

child: BlocSelector<PageViewBloc, PageViewState,

TextEditingController?>(

selector: (state) => state.commentController,

builder: (context, commentController) {

return CustomTextFormField(

controller: commentController,

hintText: "lbl_write_a_comment".tr,

textInputAction: TextInputAction.done,

contentPadding: EdgeInsets.symmetric(

),

horizontal: 16.h,

vertical: 14.h,

borderDecoration: TextFormFieldStyleHelper.fillGray,

fillcolor: appTheme.gray600,

}

);

},

),

),

SizedBox(width: 16.h),

CustomIconButton(

height: 50.h,

width: 50.h,

padding: EdgeInsets.all(12.h),

decoration: IconButtonStyleHelper.fillDeepPurpleATL24,

child: CustomImageView(

), imagePath: ImageConstant.imgGroup9143,

),

],

);

}

}

}