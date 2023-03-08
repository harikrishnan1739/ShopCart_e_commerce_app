import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                height: 50,
                width: 395,
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
          ),
          Obx(
            () => controller.isLoading
                ? CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                      itemCount: controller.products.length,
                      itemBuilder: (context, index) {
                        var imageindex =
                            productController.productlist[index].images.first;
                        var productImageIndex =
                            controller.products[index].images.first;
                        var imageUrl = productImageIndex.url;
                        var images = imageindex.url;
                        final product = controller.products[index];
                        return ListTile(
                          // tileColor: Colors.greenAccent,
                          leading: Container(
                            alignment: Alignment.center,
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.amber,
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
                          subtitle: Text(product.description),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                          ),
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
