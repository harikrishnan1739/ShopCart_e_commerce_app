// // // import 'dart:convert';
// // // import 'package:http/http.dart' as http;
// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // //
// // // import 'HttpProvider/httpprovider.dart';
// // // import 'Models/LoginOTP/loginotp.dart';
// // // import 'Models/Review/reviewmodel.dart';
// // // import 'Models/productdetails/product.dart';
// // // import 'controllers/productcontroller.dart';
// // //
// // // class ProductListPage extends StatelessWidget {
// // //   fetchproduct() async {
// // //     var url;
// // //     url = await http
// // //         .get("https://e-commerce-api-chi.vercel.app/api/v1/products" as Uri);
// // //     return json.decode(url.body[""]);
// // //   }
// // //
// // //   const ProductListPage({Key? key}) : super(key: key);
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     List<Product> _products = [];
// // //     List<Listallproduct> _listproduct = [];
// // //     final products = Get.put(ProductController());
// // //     return Scaffold(
// // //       backgroundColor: Color(0xFFD6D6D6),
// // //       //============================//AppBar------------Start-------
// // //       appBar: AppBar(
// // //         backgroundColor: Colors.white,
// // //         toolbarHeight: 80,
// // //         leading: IconButton(
// // //           onPressed: () {
// // //             //------------------product-List--Back-Button-----------
// // //             print(_products);
// // //           },
// // //           icon: Icon(
// // //             Icons.arrow_back_ios_new_rounded,
// // //             color: Colors.black,
// // //           ),
// // //         ),
// // //         //--------------------------------App-title--------------------
// // //         title: Text(
// // //           "Product CategoriesName",
// // //           style: TextStyle(
// // //             color: Colors.black,
// // //             fontSize: 16,
// // //             fontWeight: FontWeight.bold,
// // //           ),
// // //         ),
// // //         actions: [
// // //           IconButton(
// // //             onPressed: () {
// // //               //------------------product-List--Search-Button-----------
// // //               print("click");
// // //             },
// // //             icon: Icon(
// // //               Icons.search,
// // //               color: Colors.black,
// // //             ),
// // //           ),
// // //           IconButton(
// // //             onPressed: () {
// // //               //------------------product-List--Cart-Button-----------
// // //               print("click");
// // //             },
// // //             icon: Icon(
// // //               Icons.shopping_cart_outlined,
// // //               color: Colors.black,
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //       //============================//AppBar------------End-------
// // //       body: FutureBuilder(
// // //         future: products.fetchproduct(),
// // //         builder: (BuildContext context, AsyncSnapshot snapshot) {
// // //           try {
// // //             var matchlist = products.fetchproduct();
// // //             if (snapshot.hasError) {
// // //              return Center(
// // //                 child: Text("${snapshot.error}"),
// // //               );
// // //             }
// // //             if (snapshot.hasData) {
// // //             return  ListView.builder(itemBuilder: (BuildContext context, int index) {
// // //                 Row(
// // //                   children: [
// // //                     Container(
// // //                       width: 100,
// // //                       height: 100,
// // //                       child: Container(
// // //                         width: 20,
// // //                         height: 20,
// // //                         decoration: BoxDecoration(
// // //                           borderRadius: BorderRadius.circular(0),
// // //                           image: DecorationImage(
// // //                             image: NetworkImage(snapshot.data[index][
// // //                                 "https://res.cloudinary.com/dsiv2qx2p/image/upload/v1649866896/products/mo04weg0wuqzxvxbodvq.jpg" + snapshot.data[index]["url"]]),
// // //                             fit: BoxFit.cover,
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     )
// // //                   ],
// // //                 );
// // //               });
// // //             }
// // //             return matchlist;
// // //           } catch (e) {
// // //             print(e);
// // //             rethrow;
// // //           }
// // //         },
// // //       ),
// // //     );
// // //   }
// // // }
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:get/get.dart';
// import 'controllers/productcontroller.dart';
// import 'logic/logic.dart';
//
// class HomePageu extends StatelessWidget {
//   final productlistlogic = Get.put(LogicControllerone());
//   int zero = 0;
//   @override
//   Widget build(BuildContext context) {
//     final products = Get.put(ProductController());
//     return Scaffold(
//       backgroundColor: const Color(0xFFD6D6D6),
//       //============================//AppBar------------Start-------
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         toolbarHeight: 80,
//         leading: IconButton(
//           onPressed: () {
//             //------------------product-List--Back-Button-----------
//             print("d");
//           },
//           icon: const Icon(
//             Icons.arrow_back_ios_new_rounded,
//             color: Colors.black,
//           ),
//         ),
//         //--------------------------------App-title--------------------
//         title: Text(
//           "Product CategoriesName",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               //------------------product-List--Search-Button-----------print("click");
//             },
//             icon: const Icon(
//               Icons.search,
//               color: Colors.black,
//             ),
//           ),
//           IconButton(
//             onPressed: () {
//               //------------------product-List--Cart-Button-----------
//               print("click");
//             },
//             icon: const Icon(
//               Icons.shopping_cart_outlined,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//
//       body: FutureBuilder(
//         future: products.fetchproducts(),
//         builder: (BuildContext context, AsyncSnapshot snapshot) {
//           if (snapshot.hasError) {
//             return Center(
//               child: Text(snapshot.error.toString()),
//             );
//           }
//           if (snapshot.hasData) {
//             return ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: snapshot.data.length,
//                 padding: const EdgeInsets.all(8),
//                 itemBuilder: (BuildContext context, int index) {
//                   //           // for ( index; index < snapshot.data[index]["products"]; index++) {
//                   //           //   if (snapshot.data[index]["discount"] ==
//                   //           //       snapshot.data[index]["products"][index]["discount"]) {
//                   //           //     return Padding(
//                   //           //       padding: const EdgeInsets.only(top: 2.0, left: 8),
//                   //           //       child: Container(
//                   //           //         child:  Text(
//                   //           //           snapshot.data[index]["price"],
//                   //           //           style: TextStyle(
//                   //           //               color: Colors.black,
//                   //           //               fontWeight: FontWeight.bold,
//                   //           //               fontSize: 11),
//                   //           //         ),
//                   //           //       ),
//                   //           //     );
//                   //           //   }
//                   //           // }
//                   return Padding(
//                     padding: const EdgeInsets.only(top: 16.0),
//                     child: Column(
//                       children: [
//                         // Padding(
//                         //   padding:
//                         //       const EdgeInsets.only(right: 280.0, bottom: 13),
//                         //   child: Container(
//                         //     width: 110,
//                         //     height: 35,
//                         //     decoration: BoxDecoration(
//                         //       color: Colors.grey,
//                         //       borderRadius: BorderRadius.circular(9),
//                         //     ),
//                         //     child: Row(
//                         //       children: [
//                         //         Padding(
//                         //           padding:
//                         //               const EdgeInsets.only(top: 2.0, left: 8),
//                         //           child: Container(
//                         //             child: const Text(
//                         //               "ꜱʜᴏʀᴛ-ʙʏ",
//                         //               style: TextStyle(
//                         //                   color: Colors.black,
//                         //                   fontWeight: FontWeight.bold,
//                         //                   fontSize: 11),
//                         //             ),
//                         //           ),
//                         //         ),
//                         //         Container(
//                         //           child: IconButton(
//                         //               onPressed: () {
//                         //                 print(
//                         //                     "${snapshot.data[0]["images"][2]["url"]}");
//                         //               },
//                         //               icon: const Icon(
//                         //                 Icons.keyboard_arrow_down_sharp,
//                         //                 color: Colors.black,
//                         //               )),
//                         //         )
//                         //       ],
//                         //     ),
//                         //   ),
//                         // ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 4.50),
//                           child: Row(
//                             children: [
//                               Container(
//                                 //--------------Container1-------
//                                 width: 390,
//                                 height: 200,
//                                 //------------------------------
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(9),
//                                 ),
//                                 //------------------------------
//                                 alignment: Alignment.centerLeft,
//
//                                 child: Column(
//                                   children: [
//                                     //---------------------------------------Image----------------------------
//                                     Container(
//                                       height: 200,
//                                       child: Card(
//                                         child: Image.network(snapshot
//                                             .data[index]["images"][0]["url"]),
//                                       ),
//                                     ),
//                                     SizedBox(height: 10,),
//                                     Expanded(
//                                       child: Container(
//                                         child: Column(
//                                           children: [
//                                             Container(
//                                               width: 150,
//                                               height: 18,
//                                               //color: Colors.cyan,
//                                               child: Text(
//                                                 "${snapshot.data[index]["name"]}",
//                                                 style: const TextStyle(
//                                                     color: Colors.black,
//                                                     fontSize: 14,
//                                                     fontWeight:
//                                                         FontWeight.normal),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 150,
//                                       height: 18,
//                                       //color: Colors.purple,
//                                       child: Text(
//                                         snapshot.data[index]["description"],
//                                         style: const TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 11,
//                                             fontWeight: FontWeight.normal),
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 150,
//                                       height: 10,
//                                       //color: Colors.purple,
//                                       child: Text(
//                                         snapshot.data[index]
//                                             ["shortDescription"],
//                                         style: const TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 6,
//                                             fontWeight: FontWeight.normal),
//                                       ),
//                                     ),
//
//                                     Padding(
//                                       padding: const EdgeInsets.only(
//                                           left: 120.0, top: 3),
//                                       child: Container(
//                                         width: 100,
//                                         height: 17,
//                                         color: Colors.amber,
//                                       ),
//                                     )
//                                     =============================================================
//                                     Padding(
//                                       //---------------------------------------------selling--price------------------------
//                                       padding:
//                                           const EdgeInsets.only(left: 180.0),
//                                       child: Row(
//                                         children: [
//                                           Container(
//                                             width: 40,
//                                             height: 11,
//                                             // color: Colors.purple[400],
//                                             child: Text(
//                                               '₹${snapshot.data[index]["price"].toString()}',
//                                               style: const TextStyle(
//                                                 color: Colors.grey,
//                                                 fontSize: 10,
//                                                 fontWeight: FontWeight.bold,
//                                                 decoration:
//                                                     TextDecoration.lineThrough,
//                                               ),
//                                             ),
//                                           ),
//                                           Container(
//                                             width: 40,
//                                             height: 10,
//                                             // color: Colors.purple[400],
//                                             child: Text(
//                                               '₹${snapshot.data[index]["price"].toString()}',
//                                               style: const TextStyle(
//                                                 color: Colors.black,
//                                                 fontSize: 10,
//                                                 fontWeight: FontWeight.bold,
//                                               ),
//                                             ),
//                                           ),
//                                           Container(
//                                             width: 40,
//                                             height: 10,
//                                             //color: Colors.purple[400],
//                                             child: Text(
//                                               '${snapshot.data[index]["discount"].toString()}% off',
//                                               style: const TextStyle(
//                                                 color: Colors.green,
//                                                 fontSize: 10,
//                                                 fontWeight: FontWeight.bold,
//                                               ),
//                                             ),
//                                           ),
//                                           // for(int i=0;i<=snapshot.data[index]["rating"];i++)
//                                         ],
//                                       ),
//                                     ),
//                                     //=============================================================
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 });
//           }
//           return const Center(
//             child: CircularProgressIndicator(
//               color: Colors.black,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
// // // if(snapshot.data[index]["discount"] == zero){
// // //
// // // }snapshot.data[index]["images"]
// // // //                                                     [index]["url"]
// // import 'dart:convert';
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:get/get.dart';
// // import 'controllers/productcontroller.dart';
// // import 'logic/logic.dart';
// //
// // class ProductListPage extends StatelessWidget {
// //   const ProductListPage({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final productlistlogic = Get.put(ProductController());
// //     return GetBuilder<ProductController>(
// //       init: ProductController(),
// //       builder: (controller) => ListView.builder(
// //         itemCount: controller.prductList.length,
// //         itemBuilder: (context, index) {
// //           final product = controller.prductList[index];
// //           return Scaffold(
// //             backgroundColor: Colors.white,
// //             body: Container(
// //               width: 100,
// //               height: 100,
// //               color: Colors.red,
// //               child: ListTile(
// //                 title: Text(
// //                   "${product.name}",
// //                   style: TextStyle(color: Colors.white, fontSize: 20),
// //                 ),
// //                 subtitle: Text(
// //                   "${product.description}",
// //                   style: TextStyle(color: Colors.white),
// //                 ),
// //                 leading: Ink.image(image: NetworkImage("${product.images}")),
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }
//
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:get/get.dart';
//
// import 'controllers/productcontroller.dart';
//
// class HomePageu extends StatelessWidget {
//   final controller = Get.put(ShoppingController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         toolbarHeight: 80,
//         leading: IconButton(
//           onPressed: () {
//             //------------------product-List--Back-Button-----------
//             print("d");
//           },
//           icon: const Icon(
//             Icons.arrow_back_ios_new_rounded,
//             color: Colors.white,
//           ),
//         ),
//         //--------------------------------App-title--------------------
//         title: Text(
//           "Products",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               //------------------product-List--Search-Button-----------print("click");
//             },
//             icon: const Icon(
//               Icons.search,
//               color: Colors.white,
//             ),
//           ),
//           IconButton(
//             onPressed: () {
//               //------------------product-List--Cart-Button-----------
//               print("click");
//             },
//             icon: const Icon(
//               Icons.shopping_cart_outlined,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Expanded(child: GetX<ShoppingController>(
//             builder: (controller) {
//               return ListView.builder(
//                 itemCount: controller.products.length,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     width: 100,
//                     height: 100,
//
//                     color: Colors.amber,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Row(
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   width:35,
//                                   height: 30,
//                                   child: Text(
//                                     "${controller.products[index].productName}",
//                                     style: const TextStyle(
//                                         color: Colors.white, fontSize: 24),
//                                   ),
//                                 ),
//                                 // Container(
//                                 //   width:35,
//                                 //   height: 30,
//                                 //   child: Text(
//                                 //     "${controller.data[index]["description"]}",
//                                 //     style: const TextStyle(
//                                 //         color: Colors.white, fontSize: 24),
//                                 //   ),
//                                 // ),
//                               ],
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   );
//                 },
//               );
//             },
//           ))
//         ],
//       ),
//     );
//   }
// }
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:untitled/productlistSubpages/productlistfiltersubpage.dart';
import 'package:untitled/productlistSubpages/productlistratingsubpage.dart';
import 'package:untitled/search.dart';
import 'package:untitled/singleproductview.dart';

import 'controllers/productcontroller.dart';

class AllProductListPage extends StatelessWidget {
  final PostsController productController = Get.put(PostsController());

  AllProductListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(SearchPage());
            },
            icon: const Icon(Icons.search, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 7.0),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    "ShoperCart",
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 26,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        FilterPage(),
                        transition: Transition.fade,
                        duration: const Duration(milliseconds: 350),
                      );
                    },
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(9),
                        color: Colors.black,
                      ),
                      child: const Center(
                        child: Text(
                          'Filter',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        RatingFilterpage(),
                        transition: Transition.fade,
                        duration: const Duration(milliseconds: 350),
                      );
                    },
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(9),
                        color: Colors.black,
                      ),
                      child: const Center(
                        child: Text(
                          'Rating',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Obx(
              () {
                if (productController.isLoading.value) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  );
                }
                return AlignedGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 6,
                  itemCount: productController.productlist.length,
                  itemBuilder: (context, index) {
                    // Product productlitst = productController.productlist[index];
                    //---------------instense--of--image------------------
                    var imageindex =
                        productController.productlist[index].images.first;
                    //================image--url====================
                    var images = imageindex.url;
                    //---------------category---------------------
                    var category =
                        productController.productlist[index].category;
                    //-----------------product-name---------------
                    var productname = productController.productlist[index].name;
                    //------------------Selling--product--price------------
                    var discounted =
                        productController.productlist[index].discount;
                    var discountPrice =
                        productController.productlist[index].price;
                    var discountPriceinPercentage =
                        (discounted / discountPrice) * 100;
                    var sellingPrice = discountPrice -
                        (discountPrice * (discountPriceinPercentage / 100));
                    var sellinfinalprice = sellingPrice.toStringAsFixed(0);
                    //--------------------saving------------------------
                    var price = productController.productlist[index].price;
                    //--------------------discount--in--percentage----------
                    var discountnonfixed =
                        (productController.productlist[index].discount /
                                productController.productlist[index].price) *
                            100;
                    var discount = discountnonfixed.toStringAsFixed(0);
                    //------------------------description------------------
                    var description =
                        productController.productlist[index].description;
                    //--------------------------rating---------------------
                    var rating = productController.productlist[index].ratings;
                    //--------------------------------------------------------
                    if (productController.productlist[index].ratings != 0) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(SingleProductPage());
                            print('55555555555555555555555555555555');
                          },
                          child: Container(
                            width: 150,
                            height: 285,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(9),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: Offset(2, 2),
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: Offset(-2, -2),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Container(
                                    width: 185,
                                    height: 155,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(9),
                                      image: DecorationImage(
                                        image: NetworkImage(images.toString()),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 170,
                                  height: 20,
                                  // color: Colors.greenAccent,
                                  child: Text(
                                    category.toString(),
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                ),
                                Container(
                                  width: 170,
                                  height: 20,
                                  // color: Colors.greenAccent,
                                  child: Text(
                                    productname.toString(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 17.0),
                                  child: Container(
                                    width: 190,
                                    height: 20,
                                    //color: Colors.greenAccent,
                                    child: Text(
                                      '$description',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ),
                                ),
                                //--------------------------------------------------------------------
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 55,
                                        height: 20,
                                        //  color: Colors.red,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 1.0, left: 10.0),
                                          child: Text(
                                            price.toString(),
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w500,
                                                decoration:
                                                    TextDecoration.lineThrough),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Container(
                                          width: 50,
                                          height: 20,
                                          //   color: Colors.greenAccent,
                                          child: Text(
                                            '₹${sellinfinalprice}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Container(
                                          width: 50,
                                          height: 20,
                                          //   color: Colors.amber,
                                          child: Text(
                                            '${discount}% off',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                //--------------------------------------------------------
                                Padding(
                                  padding: const EdgeInsets.only(right: 110.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 17.0),
                                        child: Container(
                                          width: 45,
                                          height: 25,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(13)),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 2.0, left: 10),
                                                child: Text(
                                                  rating.toString(),
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4.0),
                                                child: Icon(
                                                  Icons.star,
                                                  color: Colors.white,
                                                  size: 13,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //-----------------------------------------------------------------
                              ],
                            ),
                          ),
                        ),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            print('ddddddddddddddddddddddddddddddddddd');
                          },
                          child: Container(
                            width: 150,
                            height: 285,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(9),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: Offset(2, 2),
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: Offset(-2, -2),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Container(
                                    width: 185,
                                    height: 155,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(9),
                                      image: DecorationImage(
                                        image: NetworkImage(images.toString()),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 170,
                                  height: 20,
                                  // color: Colors.greenAccent,
                                  child: Text(
                                    category.toString(),
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                ),
                                SizedBox(
                                  width: 170,
                                  height: 20,
                                  // color: Colors.greenAccent,
                                  child: Text(
                                    productname.toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 170,
                                  height: 20,
                                  // color: Colors.greenAccent,
                                  child: Text(
                                    description,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 9,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 120.0),
                                  child: Container(
                                    width: 50,
                                    height: 20,
                                    //color: Colors.greenAccent,
                                    child: Text(
                                      '₹$sellinfinalprice',
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                //---------------------------------------------------------------------
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 55,
                                        height: 20,
                                        //  color: Colors.red,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 1.0, left: 10.0),
                                          child: Text(
                                            price.toString(),
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w500,
                                                decoration:
                                                    TextDecoration.lineThrough),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Container(
                                          width: 50,
                                          height: 20,
                                          //   color: Colors.greenAccent,
                                          child: Text(
                                            '₹${sellinfinalprice}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Container(
                                          width: 50,
                                          height: 20,
                                          //   color: Colors.amber,
                                          child: Text(
                                            '${discount}% off',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
