
import 'package:flutter/material.dart';

import '../../widgets/app_bar/appbar_leading_image.dart';

import '../../core/app_export.dart';

import '../../widgets/app_bar/custom_app_bar.dart';

import 'bloc/search_bloc.dart';

import '../../widgets/custom_search_view.dart';

import 'models/recentsearches_item_model.dart';

import 'models/search_model.dart';

import 'widgets/recentsearches_item_widget.dart';

class SearchScreen extends StatelessWidget {

const SearchScreen({Key? key}) super(

key: key,

);

static Widget builder (BuildContext context) {

return BlocProvider<SearchBloc>(

create: (context) => SearchBloc(SearchState( searchModelobj: SearchModel(), ))

..add(SearchInitialEvent()), child: SearchScreen(), );

@override

Widget build (BuildContext context) {

return SafeArea(

child: Scaffold( resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container( width: double.maxFinite, padding: EdgeInsets.symmetric (vertical: 18.h), child: Column( mainAxisSize: MainAxisSize.max, children: [ _buildsearchSection(context), SizedBox(height: 14.h), _buildRecent Searches (context) ],

);

/// Section Widget

PreferredSizeWidget_buildAppBar (BuildContext context) {

return CustomAppBar(

leadingwidth: 24.h, leading: AppbarLeadingImage( imagePath: ImageConstant.imgCloseDeepPurpleA200, margin: EdgeInsets.only( left: 16.h, top: 13.h, bottom: 15.h, ),

onTap: () {

onTapCloseone (context); },

),

);

/// Section Widget

Widget_buildSearchSection(BuildContext context) {

return Container(

width: double.maxFinite, margin: EdgeInsets.symmetric (horizontal: 16.h), child: Column( crossAxisAlignment: CrossAxisAlignment.start, children: [

BlocSelector<SearchBloc, SearchState, TextEditingController?>( selector: (state) => state.searchController,

},

Text( "lbl_search".tr, style: theme.textTheme.headlineLarge, ), SizedBox(height: 16.h), builder: (context, searchController) { return CustomSearchView( controller: searchController, hintText: "lbl_search".tr, contentPadding: EdgeInsets.symmetric( horizontal: 16.h, vertical: 10.h, ), );

), SizedBox(height: 30.h), SizedBox( width: double.maxFinite, child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [ Text( "lbl_recently".tr, style: CustomTextStyles.titleLargeDeeppurpleA200,

), Text( "lbl_clear".tr, style: CustomTextStyles.titleMediumDeeppurpleA200, ), ],

),

);
Align(

alignment: Alignment.topCenter,

child: Text

"lbl_clear_all".tr,

style: CustomTextStyles.titleMediumDeeppurpleA200_1,

],

),

],

),

);

}

/// Section Widget

Widget_buildRecent Searches (BuildContext context) {

return Expanded(

child: BlocSelector<SearchBloc, SearchState, SearchModel?>(

selector: (state) => state.searchModelObj,

builder: (context, searchModelobj) {

return ListView.separated(

padding: EdgeInsets.symmetric (horizontal: 16.h),

physics: BouncingScrollPhysics(),

shrinkwrap: true,

separatorBuilder: (context, index) {

return Padding(

padding: EdgeInsets.symmetric (vertical: 7.0.h),

child: Divider(

height: 2.h,

thickness: 2.h,

color: appTheme.gray50,

),

);

},

itemCount: searchModelobj?.recentsearchesItemList.length ?? 0,

itemBuilder: (context, index) {

RecentsearchesItemModel model =

searchModelObj?.recentsearchesItemList[index] ??

RecentsearchesItemModel();

return RecentsearchesItemwidget(

model,

);

},

);

},

),

);

}

/// Navigates to the previous screen.

onTapCloseone (BuildContext context) {

NavigatorService.goBack();

}

}