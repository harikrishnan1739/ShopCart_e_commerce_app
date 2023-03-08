import 'package:get/get.dart';

class LoginOTP extends GetxController {
  final int phone;

  LoginOTP({
    required this.phone,
  });

  factory LoginOTP.fromJson(Map<String, dynamic> json) {
    return LoginOTP(
      phone: json['phone'],
    );
  }
}
