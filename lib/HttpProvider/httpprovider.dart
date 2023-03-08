import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../Models/productdetails/product.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static const String apiUrl =
      'https://e-commerce-api-chi.vercel.app/api/v1/products';

  static Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      Iterable jsonResponseProducts = jsonResponse['products'];
      return jsonResponseProducts
          .map((product) => Product.fromJson(product))
          .toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

class SearchControllers extends GetxController {
  final _products = <Search>[].obs;
  final _isLoading = false.obs;

  List<Search> get products => _products;
  bool get isLoading => _isLoading.value;

  Future searchProducts(String keyword) async {
    _isLoading.value = true;
    final response = await http.get(Uri.parse(
        'https://e-commerce-api-chi.vercel.app/api/v1/products?keyword=$keyword'));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body)['products'] as List<dynamic>;
      _products.value = json
          .map((item) => Search(
                name: item['name'] as String,
                description: item['description'] as String,
                price: item['price'] as int,
                images: List<Image>.from(item['images'].map((x) => Image.fromJson(x))),
              ))
          .toList();
    } else {
      _products.value = [];
    }

    _isLoading.value = false;
  }
}
