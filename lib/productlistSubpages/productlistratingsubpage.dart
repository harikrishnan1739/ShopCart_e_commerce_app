import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../HttpProvider/httpprovider.dart';
import '../controllers/productcontroller.dart';

class RatingFilterpage extends StatelessWidget {
  final productController = Get.put(ProductController());
  final PostsController allproductController = Get.put(PostsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
        ),
        title: const Text(
          'Product List',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Obx(() {
        if (productController.products.isEmpty) {
          return Center(child: CircularProgressIndicator());
          //-------------------------------------------------
        } else {
          final filteredProducts = productController
              .filterProducts(productController.minRating.value);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(child: Text('Rating :${productController.minRating.value.round()}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
              //-----------------------------------------------
              Slider(
                activeColor: Colors.black,
                value: productController.minRating.value,
                min: 0.0,
                max: 5.0,
                divisions: 50,
                label: productController.minRating.value.toStringAsFixed(1),
                onChanged: (value) => productController.minRating.value = value,
              ),
              //----------------------------------------------
              Expanded(
                child: Obx(
                  () {
                    if (allproductController.isLoading.value) {
                      return const Center(
                        child: CircularProgressIndicator(color: Colors.black),
                      );
                    }
                    return AlignedGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 6,
                      itemCount: filteredProducts.length,
                      itemBuilder: (context, index) {
                        // Product productlitst = productController.productlist[index];
                        //---------------instense--of--image------------------
                        var imageindex = allproductController
                            .productlist[index].images.first;
                        //================image--url====================
                        var images = imageindex.url;
                        //---------------category---------------------
                        var category =
                            allproductController.productlist[index].category;
                        //-----------------product-name---------------
                        var productname =
                            allproductController.productlist[index].name;
                        //------------------Selling--product--price------------
                        var discounted =
                            allproductController.productlist[index].discount;
                        var discountPrice =
                            allproductController.productlist[index].price;
                        var discountPriceinPercentage =
                            (discounted / discountPrice) * 100;
                        var sellingPrice = discountPrice -
                            (discountPrice * (discountPriceinPercentage / 100));
                        var sellinfinalprice = sellingPrice.toStringAsFixed(0);
                        //--------------------saving------------------------
                        var price =
                            allproductController.productlist[index].price;
                        //--------------------discount--in--percentage----------
                        var discountnonfixed = (allproductController
                                    .productlist[index].discount /
                                allproductController.productlist[index].price) *
                            100;
                        var discount = discountnonfixed.toStringAsFixed(0);
                        //------------------------description------------------
                        var description =
                            allproductController.productlist[index].description;
                        //--------------------------rating---------------------
                        var rating =
                            allproductController.productlist[index].ratings;
                        if (allproductController.productlist[index].ratings != 0) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
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
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 185,
                                        height: 155,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(9),
                                          image: DecorationImage(
                                            image:
                                                NetworkImage(images.toString()),
                                            fit: BoxFit.cover,
                                          ),
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
                                                  decoration: TextDecoration
                                                      .lineThrough),
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
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 110.0),
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
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                  padding:
                                                      const EdgeInsets.only(
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
                                ],
                              ),
                            ),
                          );
                        } else {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
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
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 185,
                                        height: 155,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(9),
                                          image: DecorationImage(
                                            image:
                                                NetworkImage(images.toString()),
                                            fit: BoxFit.cover,
                                          ),
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
                                    padding:
                                        const EdgeInsets.only(right: 120.0),
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
                          );
                        }
                      },
                    );
                  },
                ),
              ),
            ],
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(
          20,
        ))),
        // ignore: avoid_returning_null_for_void
        onPressed: () {
          productController.fetchProducts();
        },
        child: const Icon(
          Icons.refresh,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
