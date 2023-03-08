import 'package:get/get.dart';

class Review extends GetxController {
  final int id;
  final String user;
  final String name;
  final String rating;
  final String description;

  Review({
    required this.id,
    required this.user,
    required this.name,
    required this.rating,
    required this.description,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      id: json['id'],
      user: json['user'],
      name: json['name'],
      rating: json['rating'],
      description: json['description'],

    );
  }
}
