import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../HttpProvider/httpprovider.dart';
import '../controllers/productcontroller.dart';
import '../singleproductview.dart';

class FilterPage extends StatelessWidget {
  final PostsController productController = Get.put(PostsController());
  final PriceFilteringControlling controller =
      Get.put(PriceFilteringControlling());

  @override
  Widget build(BuildContext context) {
    final SfRangeValues values = const SfRangeValues(0.0, 100000.0);
    double averagevalues = (values.start + values.end) / 2;
    //-------------------------------------
    var min = controller.minPrice.value = values.start;
    var max = controller.maxPrice.value = values.end;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Price Filter',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          Container(
            width: 200,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadiusDirectional.circular(7),
            ),

            child: Center(
              child: Obx(() => Text(
                  'Price : ${controller.minPrice.value.round().toString()} -- ${controller.maxPrice.value.round().toString()}',
                  style:
                      const TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Min Price:',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Obx(() => Slider(
                    activeColor: Colors.black,
                    value: controller.minPrice.value,
                    min: 0,
                    max: 1000,
                    divisions: 100,
                    label: controller.minPrice.value.round().toString(),
                    onChanged: (value) {
                      controller.minPrice.value = value;
                      controller.filterProducts();
                    },
                  )),
              Text(controller.minPrice.value.toStringAsFixed(2)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Max Price:',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              Obx(() => Slider(
                    activeColor: Colors.black,
                    value: controller.maxPrice.value,
                    min: 0,
                    max: 100000,
                    divisions: 100,
                    label: controller.maxPrice.value.round().toString(),
                    onChanged: (value) {
                      controller.maxPrice.value = value;
                      controller.filterProducts();
                    },
                  )),
              Text(controller.maxPrice.value.toStringAsFixed(2)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right:176.0),
            child: Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFFEEEEEE),
                borderRadius: BorderRadiusDirectional.circular(7),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:4.0),
                    child: Text(controller.products.length.toString(),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  Text('products found',style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
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
                              ],
                            ),
                          ),
                        ),
                      );
                    } else{
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
