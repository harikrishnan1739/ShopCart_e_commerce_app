import 'package:get/get.dart';

class Verify extends GetxController {
  final int otp;
  final String phone;
  final String hash;

  Verify({
    required this.otp,
    required this.phone,
    required this.hash,
  });

  factory Verify.fromJson(Map<String, dynamic> json) {
    return Verify(
      otp: json['otp'],
      phone: json['phone'],
      hash: json['hash'],
    );
  }
}
