import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/signup.dart';

class SingleProductPage extends StatelessWidget {
  const SingleProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> ImageListsignin = [
      "assets/Accessories.jpeg",
      'assets/Addicted to Black.jpeg',
      'assets/Best New Gear_ July 2020 I CARRYOLOGY.jpeg',
      'assets/Giorgio Armani’s 10 Best Fashion Moments On Film.jpeg',
      'assets/Men’s Luxury Fashion _ Burberry® Official.jpeg'
    ];
    return Scaffold(
      backgroundColor: Colors.grey,
      //------------------------------------------------------------------------
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 21.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      //------------------------------------------------------------------------
      //----
      body: SizedBox(
        width: double.infinity,
        height: 400,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              width: 412,
              bottom: 0,
              right: 0,
              child: Container(
                height: 250,
                width: 412,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 321.9),
                      child: Positioned(
                        top: 0,
                        width: 50,
                        bottom: 0,
                        right: 500,
                        child: Container(
                          width: 40,
                          height: 100,
                          //color: Colors.blueAccent,
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.share_outlined,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   width: 330,
            //   height: 100,
            //
            //   decoration: BoxDecoration(
            //       color: Colors.greenAccent,
            //     borderRadius: BorderRadius.circular(9)
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
