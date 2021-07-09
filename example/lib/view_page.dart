import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vgts_login_example/view_page_viewmodel.dart';


class ViewPage extends ViewModelBuilderWidget<ViewPageViewModel>{

  @override
  void onViewModelReady(ViewPageViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(BuildContext context, ViewPageViewModel viewModel, Widget? child) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('VGTS',textScaleFactor: 1,),
        ),
        body: Center(
          child: MaterialButton(
            child: Text("Tap"),
            onPressed: () {
              viewModel.login!.openWebView(context);
            },
          ),)
    );
  }

  @override
  ViewPageViewModel viewModelBuilder(BuildContext context)=>ViewPageViewModel();

}

