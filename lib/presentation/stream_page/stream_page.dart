import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_searchview.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/streaming_bloc.dart';
import 'models/contentcard_item_model.dart';
import 'models/streaming_model.dart';
import 'widgets/contentcard_item_widget.dart';

class StreamingPage extends StatelessWidget {
  const StreamingPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<StreamingBloc>(
      create: (context) => StreamingBloc(
        StreamingState(streamingModelobj: StreamingModel()),
      )..add(StreamingInitialEvent()),
      child: const StreamingPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          margin: EdgeInsets.only(
            left: 16.h,
            top: 20.h,
          ),
          child: BlocSelector<StreamingBloc, StreamingState, StreamingModel?>(
            selector: (state) => state.streamingModelobj,
            builder: (context, streamingModelobj) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 20.h,
                  children: List.generate(
                    streamingModelobj?.contentcardItemList.length ?? 0,
                    (index) {
                      ContentcardItemModel model =
                          streamingModelobj?.contentcardItemList[index] ??
                              ContentcardItemModel();
                      return ContentcardItemWidget(
                        model,
                        onTapProfiledetails: () {
                          _onTapProfiledetails(context);
                        },
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title:
          BlocSelector<StreamingBloc, StreamingState, TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            controller: searchController,
            hintText: "lbl_search".tr,
          );
        },
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgGroup9086,
          margin: EdgeInsets.only(
            top: 5.h,
            right: 19.h,
            bottom: 7.h,
          ),
          onTap: () {
            _onTapProfiledetails(context);
          },
        ),
      ],
    );
  }

  void _onTapProfiledetails(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.accountViewScreen);
  }
}
