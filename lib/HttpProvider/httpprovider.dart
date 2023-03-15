import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:untitled/homepage.dart';

import '../Models/productdetails/product.dart';
import 'package:http/http.dart' as http;

import '../acountpage.dart';
import '../bottomnavigatorpage.dart';
import '../cartpage.dart';
import '../categorypage.dart';
import '../notifications.dart';

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
        images: item['images'] ,
              ))
          .toList();
    } else {
      _products.value = [];
    }

    _isLoading.value = false;
  }
}

// class TotalProductsCount {
//   static const String apiUrl =
//       'https://e-commerce-api-chi.vercel.app/api/v1/products';
//
//   static Future<List<Product>> fetchProducts() async {
//     final response = await http.get(Uri.parse(apiUrl));
//     if (response.statusCode == 200) {
//       var jsonResponse = jsonDecode(response.body);
//       Iterable jsonResponseProducts = jsonResponse['productsCount'];
//       return jsonResponseProducts
//           .map((product) => Product.fromJson(product))
//           .toList();
//     } else {
//       throw Exception('Failed to load posts');
//     }
//   }
// }
//-------------------product-price--filtering------------------------------

class PriceFilteringControlling extends GetxController {
  var products = <Product>[].obs;
  var filteredProducts = <Product>[].obs;
  var minPrice = 0.0.obs;
  var maxPrice = 100000.0.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    final response = await http.get(
        Uri.parse('https://e-commerce-api-chi.vercel.app/api/v1/products'));
    final jsonList = json.decode(response.body);
    Iterable jsonResponseProducts = jsonList['products'];
    products.value =
        jsonResponseProducts.map((e) => Product.fromJson(e)).toList();
    filterProducts();
  }

  void filterProducts() {
    filteredProducts.value = products
        .where((p) => p.price >= minPrice.value && p.price <= maxPrice.value)
        .toList();
  }
}

//-----------------------------------------Rating-Filtering----------------------------------------------

//---------------------------------------------------------------------------------------------
class ProductController extends GetxController {
  var products = <Product>[].obs;
  var minRating = 0.0.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    final response = await http.get(
        Uri.parse('https://e-commerce-api-chi.vercel.app/api/v1/products'));
    if (response.statusCode == 200) {
      Iterable jsonData = jsonDecode(response.body)['products'];
      products.value =
          (jsonData as List).map((data) => Product.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }

  List<Product> filterProducts(double minRating) {
    return products.where((product) => product.ratings >= minRating).toList();
  }
}

//------------------------------------------------------------------------------

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  var currentIndex = 0.obs;

  final pages = <String>[
    '/home',
    '/category',
    '/notifications',
    '/acount',
    '/cart'
  ];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    print('-------------------------------------------------2495890-812345-08143250328553-092785-0123875-0233934333383333335-3349');
    if (settings.name == '/home')
      return GetPageRoute(
        settings: settings,
        page: () => HomePage(),
      );

    if (settings.name == '/category')
      return GetPageRoute(
        settings: settings,
        page: () => CategoryPage(),
      );

    if (settings.name == '/notifications')
      return GetPageRoute(
        settings: settings,
        page: () => NotificationsPage(),
      );
    if (settings.name == '/acount')
      return GetPageRoute(
        settings: settings,
        page: () => AcountPage(),
      );
    if (settings.name == '/cart')
      return GetPageRoute(
        settings: settings,
        page: () => CartPage(),
      );

    return null;
  }
}
