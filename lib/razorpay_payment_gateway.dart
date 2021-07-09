// import 'dart:convert';
//
// import 'package:razorpay_flutter/razorpay_flutter.dart';
// import 'package:takeaway/locator.dart';
// import 'package:takeaway/repo/cart_repo.dart';
// import 'package:takeaway/services/preference_service.dart';
//
// class RazorpayPaymentGateway {
//
//   Razorpay _razorpay;
//
//   Function(PaymentSuccessResponse) _onPaymentSuccess;
//   Function(PaymentFailureResponse) _onPaymentFailure;
//   Function(ExternalWalletResponse) _onExternalWalletResponse;
//
//   RazorpayPaymentGateway(this._onPaymentSuccess, this._onPaymentFailure, this._onExternalWalletResponse){
//    _razorpay = new Razorpay();
//   }
//
//   openCardPayment(double amount, String cardHolderName, String cardNumber, String cardExpiryMonth, String cardExpiryYear,){
//
//     print(cardHolderName);
//
//     Map preFill = {
//       'method': 'card',
//       'card[number]': cardNumber,
//       'card[name]': cardHolderName,
//       'card[expiry]': cardExpiryMonth + "/" + cardExpiryYear
//     };
//
//     _open(amount, 'card', preFill);
//   }
//
//
//   openNetBankingPayment(double amount,String code){
//
//     print(amount);
//
//     Map preFill = {
//       'method': 'netbanking',
//       'bank': code.toUpperCase(),
//     };
//
//     print(preFill);
//     _open(amount, 'netbanking', preFill);
//   }
//
//   openUPIPayment(double amount,String upiId){
//
//     print(amount);
//
//     Map preFill = {
//       'method': 'upi',
//       'vpa': upiId,
//     };
//
//     print(preFill);
//     _open(amount, 'upi', preFill);
//   }
//
//
//   //TODO: CHANGE TO DYNAMIC RAZORPAY KEY, AMOUNT
//   //
//   _open(double amount, String paymentMethod, Map preFill) async {
//     int razorpayAmount = (amount * 100).toInt();
//     var options = {
//       'key': locator<CartRepo>().store.paymentApiKey,
//       'amount': razorpayAmount,
//       'payAmount': amount,
//       'name': 'Take Away',
//       'description': '',
//       'prefill': {
//         'contact': locator<PreferenceService>().getUser().phone,
//         'email': locator<PreferenceService>().getUser().phone + "@takeaway.com",
//         ...preFill
//       },
//       'readonly': {
//         "email": true,
//         "contact": true,
//         'method': true
//       },
//       'method':{
//         'card': paymentMethod.toLowerCase() == "card",
//         'upi': paymentMethod.toLowerCase() == "upi",
//         'netbanking': paymentMethod.toLowerCase() == "netbanking",
//         'emi': paymentMethod.toLowerCase() == "emi",
//         'wallet': paymentMethod.toLowerCase() == "wallet",
//         'cardless_emi': paymentMethod.toLowerCase() == "cardless_emi",
//         'paylater': paymentMethod.toLowerCase() == "paylater",
//         'emandate': paymentMethod.toLowerCase() == "emandate",
//       }
//     };
//
//     print(jsonEncode(options));
//
//     _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _onPaymentSuccess);
//     _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _onPaymentFailure);
//     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _onExternalWalletResponse);
//
//     try {
//       _razorpay.open(options);
//     } catch (e) {
//       print(e);
//     }
//
//   }
//
// }