import 'package:stacked/stacked.dart';
import 'package:vgts_login/core/model.dart';
import 'package:vgts_login/vgts_login.dart';


class ViewPageViewModel extends BaseViewModel {

  VGTSLogin? login;


  onSuccess(String response) async {
    print("SuccessResponse ${response}");
  }

  onFail(String response) async {
    print(response);
  }

  void init() {
    login =  new VGTSLogin(onSuccess: onSuccess,onFailure: onFail);
  }



}