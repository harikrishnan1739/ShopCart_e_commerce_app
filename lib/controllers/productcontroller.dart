// import 'dart:convert';
//
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import '../Models/productdetails/product.dart';
//
//
// class HomeController extends GetxController {
//   var data = [].obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     fetchProducts();
//   }
//
//   // void fetchData() async {
//   //   var response = await http.get(Uri.parse('https://e-commerce-api-chi.vercel.app/api/v1/products'));
//   //   if (response.statusCode == 200) {
//   //     data.value = json.decode(response.body);
//   //   } else {
//   //     print('Error fetching data');
//   //   }
//   // }

// }
// //
// import 'package:get/state_manager.dart';
//
// import '../Models/productdetails/product.dart';
// import '../Models/testingstatic.dart';
//
// class ShoppingController extends GetxController {
//   var products = <Products>[].obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     fetchProducts();
//   }
//
//   void fetchProducts() async {
//     await Future.delayed(Duration(seconds: 1));
//     var productResult = [
//       Products(
//           id: 1,
//           price: 30,
//           productDescription: 'some description about product',
//           productImage: 'abd',
//           productName: 'FirstProd'),
//       Products(
//           id: 2,
//           price: 40,
//           productDescription: 'some description about product',
//           productImage: 'abd',
//           productName: 'SecProd'),
//       Products(
//           id: 3,
//           price: 49.5,
//           productDescription: 'some description about product',
//           productImage: 'abd',
//           productName: 'ThirdProd'),
//     ];
//
//     products.value = productResult;
//   }
// }
import 'package:get/get.dart';


import '../HttpProvider/httpprovider.dart';
import '../Models/productdetails/product.dart';


class PostsController extends GetxController {
  var isLoading = true.obs;
  var productlist = List<Product>.empty().obs;

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  void fetchPosts() async {
    try {
      isLoading(true);
      var fetchedPosts = await RemoteServices.fetchProducts();
      if (fetchedPosts != null) {
    productlist.assignAll(fetchedPosts as Iterable<Product>);
      }
    } finally {
      isLoading(false);
    }
  }
}
