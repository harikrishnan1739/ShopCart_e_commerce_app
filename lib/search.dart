import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:untitled/productlistSubpages/productlistfiltersubpage.dart';
import 'package:untitled/productlistSubpages/productlistratingsubpage.dart';
import 'package:untitled/singleproductview.dart';

import 'HttpProvider/httpprovider.dart';
import 'controllers/productcontroller.dart';

class SearchPage extends StatelessWidget {
  final SearchControllers controller = Get.put(SearchControllers());
  final PostsController productController = Get.put(PostsController());
  SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 2),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadiusDirectional.circular(8)),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 5),
                  child: Container(
                    height: 50,
                    width: 352,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 2),
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            hintText: 'Search for Products,Brands and More',
                            hintStyle:
                                TextStyle(color: Colors.white38, fontSize: 12),
                            border: InputBorder.none),
                        onChanged: (value) => controller.searchProducts(value),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
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
          Obx(
            () => controller.isLoading
                ? CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                      itemCount: controller.products.length,
                      itemBuilder: (context, index) {
                        var productImageIndex = controller.products[index].images.first;
                        var imageUrl = productImageIndex.url;
                        final product = controller.products[index];
                        final price = controller.products[index].price;
                        return ListTile(
                            // tileColor: Colors.greenAccent,
                            leading: Container(
                              alignment: Alignment.center,
                              height: 90,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                image: DecorationImage(
                                  image: NetworkImage(imageUrl.toString()),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(product.name),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(right: 108.0),
                              child: Text(product.description),
                            ),
                            trailing: Text(
                              '₹${price.toString()}',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ));
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
