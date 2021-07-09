
class SuccessResponse {
  bool? status;
  String? passCode;

  SuccessResponse({this.status, this.passCode});

  SuccessResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    passCode = json['pass_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['pass_code'] = this.passCode;
    return data;
  }
}

class FailureResponse {
  bool? status;
  String? message;

 FailureResponse({this.status, this.message});

  FailureResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}