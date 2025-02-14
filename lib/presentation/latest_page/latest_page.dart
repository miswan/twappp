
import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import '../la/bloc/latest_bloc.dart';

import '../la/models/latest_model.dart';

import '../la/models/trendingposts_item_model.dart';

import '../la/widgets/trendingposts_item_widget.dart'; // ignore_for_file: must_be_immutable

class LatestPage extends Statefulwidget {

const LatestPage({Key? key})

: super(

key: key,

);

@override

LatestPageState createstate() => LatestPageState();

static Widget builder (BuildContext context) {

return BlocProvider LatestBloc>(

create: (context) => LatestBloc(LatestState(

))

latestModelobj: LatestModel(),

..add(LatestInitialEvent()),

child: LatestPage(), );

}

}

class LatestPageState extends State<LatestPage>

with AutomaticKeepAliveClientMixin<LatestPage> {

@override

bool get wantKeepAlive => true;

@override

Widget build (BuildContext context) {

super.build(context);

return SafeArea(

child: Scaffold(

backgroundColor: Colors.transparent,

resizeToAvoidBottomInset: false,

body: Container(

width: double.maxFinite, padding: EdgeInsets.symmetric( ), horizontal: 16.h, vertical: 24.h,

child: Column(

mainAxisSize: MainAxisSize.max, children: [SizedBox(height: 2.h), _buildTrendingPosts (context)],

}

/// Section Widget

Widget_buildTrendingPosts (BuildContext context) {

return Expanded(

child: BlocSelector<LatestBloc, LatestState, LatestModel?>(

selector: (state) => state.latestModelobj,

builder: (context, latestModelobj) {

return ListView.separated(

padding: EdgeInsets.zero, physics: BouncingScrollPhysics(), shrinkwrap: true, separatorBuilder: (context, index) { return SizedBox( height: 24.h,

},

);

itemCount: latestModelObj?.trendingpostsItemList.length ?? 0,

itemBuilder: (context, index) {

TrendingpostsItemModel model = latestModelobj?.trendingpostsItemList[index] ?? TrendingpostsItemModel(); return TrendingpostsItemwidget(

);

model,

ب