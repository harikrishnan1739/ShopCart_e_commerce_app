import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:untitled/singleproductview.dart';

import 'controllers/productcontroller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(
        'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd');
    // final PostsController productController = Get.put(PostsController());
    // final List<String> ImageListsignin = [
    //   "assets/homeimages/iphone.jpg",
    //   'assets/homeimages/macbook.jpg',
    //   'assets/homeimages/ray-ban-stories-smart-glasses.png',
    //   'assets/homeimages/SAMSUNG-GALAXY-S21-ULTRA-5G-SNAPDRAGON-888-BANNER-ALEZAY-KUWAIT.jpg',
    //   'assets/homeimages/watch.jpg'
    // ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        // body: Container(
        //     width: double.infinity,
        //     height: double.infinity,
        //     child: ListView(
        //       scrollDirection: Axis.vertical,
        //       children: [
        //         Column(
        //           children: <Widget>[
        //             SizedBox(
        //               width: double.infinity,
        //               height: 270,
        //               child: Stack(
        //                 children: [
        //                   Positioned(
        //                     top: 0,
        //                     width: 412,
        //                     bottom: 0,
        //                     right: 0,
        //                     child: Container(
        //                       height: 250,
        //                       width: 412,
        //                       decoration: const BoxDecoration(
        //                         color: Color(0xFFEEEEEE),
        //                       ),
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.only(left: 13.0, top: 13),
        //                     child: Container(
        //                       width: 140,
        //                       height: 50,
        //                       child: Row(
        //                         children: [
        //                           Container(
        //                             width: 27,
        //                             height: 27,
        //                             child: Image.asset(
        //                               'assets/2331966.png',
        //                               fit: BoxFit.cover,
        //                             ),
        //                           ),
        //                           const Text(
        //                             'Shoper',
        //                             style: TextStyle(
        //                                 color: Colors.blue,
        //                                 fontWeight: FontWeight.bold,
        //                                 fontSize: 12),
        //                           ),
        //                           const Text(
        //                             'Cart',
        //                             style: TextStyle(
        //                               color: Colors.black,
        //                               fontWeight: FontWeight.bold,
        //                               fontSize: 13,
        //                             ),
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding:
        //                         const EdgeInsets.only(left: 350.0, top: 10),
        //                     child: Container(
        //                       width: 50,
        //                       height: 50,
        //                       decoration: BoxDecoration(
        //                           color: Colors.white,
        //                           borderRadius:
        //                               BorderRadiusDirectional.circular(20)),
        //                       child: Center(
        //                         child: IconButton(
        //                             onPressed: () {},
        //                             icon: const Icon(
        //                               Icons.menu,
        //                               color: Colors.black,
        //                             )),
        //                       ),
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding:
        //                         const EdgeInsets.only(left: 300.0, top: 12),
        //                     child: IconButton(
        //                         onPressed: () {},
        //                         icon: const Icon(
        //                           Icons.favorite_border,
        //                           size: 25,
        //                         )),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.only(top: 75.0, left: 30),
        //                     child: Container(
        //                       width: 300,
        //                       height: 40,
        //                       decoration: const BoxDecoration(
        //                         color: Colors.white,
        //                         borderRadius: BorderRadius.only(
        //                           topLeft: Radius.circular(9),
        //                           bottomLeft: Radius.circular(7),
        //                         ),
        //                       ),
        //                       child: const Padding(
        //                         padding: EdgeInsets.only(left: 8.0),
        //                         child: TextField(
        //                           style: TextStyle(color: Colors.white),
        //                           decoration: InputDecoration(
        //                               hintText:
        //                                   'Search for Products,Brands and More',
        //                               hintStyle: TextStyle(
        //                                   color: Colors.grey, fontSize: 12),
        //                               border: InputBorder.none),
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding:
        //                         const EdgeInsets.only(top: 75.0, left: 330),
        //                     child: Container(
        //                       width: 40,
        //                       height: 40,
        //                       decoration: const BoxDecoration(
        //                         color: Colors.black,
        //                         borderRadius: BorderRadius.only(
        //                             topLeft: Radius.circular(0),
        //                             bottomLeft: Radius.circular(0),
        //                             bottomRight: Radius.circular(7),
        //                             topRight: Radius.circular(7)),
        //                       ),
        //                       child: Center(
        //                         child: IconButton(
        //                           onPressed: () {},
        //                           icon: const Icon(
        //                             Icons.search,
        //                             color: Colors.white,
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.only(top: 140.0),
        //                     child: Container(
        //                       width: double.infinity,
        //                       height: 100,
        //                       color: const Color(0xFFEEEEEE),
        //                       child: ListView(
        //                         // This next line does the trick.
        //                         scrollDirection: Axis.horizontal,
        //                         children: <Widget>[
        //                           Row(
        //                             mainAxisAlignment:
        //                                 MainAxisAlignment.spaceEvenly,
        //                             children: [
        //                               Column(
        //                                 children: [
        //                                   Padding(
        //                                     padding: const EdgeInsets.only(
        //                                         left: 8.0),
        //                                     child: GestureDetector(
        //                                       onTap: () {
        //                                         print('click');
        //                                       },
        //                                       child: Container(
        //                                         alignment: Alignment.center,
        //                                         height: 75,
        //                                         width: 75,
        //                                         decoration: BoxDecoration(
        //                                           borderRadius:
        //                                               BorderRadius.circular(45),
        //                                           color:
        //                                               const Color(0xFFE0E0E0),
        //                                           image: const DecorationImage(
        //                                             image: NetworkImage(
        //                                                 "https://static.toiimg.com/photo/msid-95944042/95944042.jpg"),
        //                                             fit: BoxFit.cover,
        //                                           ),
        //                                         ),
        //                                       ),
        //                                     ),
        //                                   ),
        //                                   const Text(
        //                                     'phones',
        //                                     style: TextStyle(
        //                                         fontSize: 10,
        //                                         fontWeight: FontWeight.bold),
        //                                   ),
        //                                 ],
        //                               ),
        //                               Column(
        //                                 children: [
        //                                   Padding(
        //                                     padding: const EdgeInsets.only(
        //                                         left: 8.0),
        //                                     child: GestureDetector(
        //                                       onTap: () {
        //                                         print('click');
        //                                       },
        //                                       child: Container(
        //                                         alignment: Alignment.center,
        //                                         height: 75,
        //                                         width: 75,
        //                                         decoration: BoxDecoration(
        //                                           color:
        //                                               const Color(0xFFE0E0E0),
        //                                           borderRadius:
        //                                               BorderRadius.circular(45),
        //                                           image: const DecorationImage(
        //                                             image: NetworkImage(
        //                                                 "https://www.lalpathlabs.com/blog/wp-content/uploads/2019/01/Fruits-and-Vegetables.jpg"),
        //                                             fit: BoxFit.cover,
        //                                           ),
        //                                         ),
        //                                       ),
        //                                     ),
        //                                   ),
        //                                   const Text(
        //                                     'fresh',
        //                                     style: TextStyle(
        //                                         fontSize: 10,
        //                                         fontWeight: FontWeight.bold),
        //                                   ),
        //                                 ],
        //                               ),
        //                               Column(
        //                                 children: [
        //                                   Padding(
        //                                     padding: const EdgeInsets.only(
        //                                         left: 8.0),
        //                                     child: GestureDetector(
        //                                       onTap: () {
        //                                         print('click');
        //                                       },
        //                                       child: Container(
        //                                         alignment: Alignment.center,
        //                                         height: 75,
        //                                         width: 75,
        //                                         decoration: BoxDecoration(
        //                                           color:
        //                                               const Color(0xFFE0E0E0),
        //                                           borderRadius:
        //                                               BorderRadius.circular(45),
        //                                           image: const DecorationImage(
        //                                             image: NetworkImage(
        //                                                 "https://freerangestock.com/sample/79009/hot-deals-on-shopping-bags-shows-bargains-sale-and-save.jpg"),
        //                                             fit: BoxFit.cover,
        //                                           ),
        //                                         ),
        //                                       ),
        //                                     ),
        //                                   ),
        //                                   const Text(
        //                                     'HOT deals',
        //                                     style: TextStyle(
        //                                         fontSize: 10,
        //                                         fontWeight: FontWeight.bold),
        //                                   ),
        //                                 ],
        //                               ),
        //                               Column(
        //                                 children: [
        //                                   Padding(
        //                                     padding: const EdgeInsets.only(
        //                                         left: 8.0),
        //                                     child: GestureDetector(
        //                                       onTap: () {
        //                                         print('click');
        //                                       },
        //                                       child: Container(
        //                                         alignment: Alignment.center,
        //                                         height: 75,
        //                                         width: 75,
        //                                         decoration: BoxDecoration(
        //                                           color:
        //                                               const Color(0xFFE0E0E0),
        //                                           borderRadius:
        //                                               BorderRadius.circular(45),
        //                                           image: DecorationImage(
        //                                             image: NetworkImage(
        //                                                 "https://i.kym-cdn.com/photos/images/facebook/001/896/216/4fc.jpg"),
        //                                             fit: BoxFit.cover,
        //                                           ),
        //                                         ),
        //                                         child: Container(
        //                                           alignment: Alignment.center,
        //                                           height: 50,
        //                                           width: 50,
        //                                         ),
        //                                       ),
        //                                     ),
        //                                   ),
        //                                   const Text(
        //                                     'Fashion',
        //                                     style: TextStyle(
        //                                         fontSize: 10,
        //                                         fontWeight: FontWeight.bold),
        //                                   ),
        //                                 ],
        //                               ),
        //                               Column(
        //                                 children: [
        //                                   Padding(
        //                                     padding: const EdgeInsets.only(
        //                                         left: 8.0),
        //                                     child: GestureDetector(
        //                                       onTap: () {
        //                                         print('click');
        //                                       },
        //                                       child: Container(
        //                                         alignment: Alignment.center,
        //                                         height: 75,
        //                                         width: 75,
        //                                         decoration: BoxDecoration(
        //                                           color:
        //                                               const Color(0xFFE0E0E0),
        //                                           borderRadius:
        //                                               BorderRadius.circular(45),
        //                                           image: DecorationImage(
        //                                             image: NetworkImage(
        //                                                 "https://m.media-amazon.com/images/I/41L20PbeduL.png"),
        //                                             fit: BoxFit.cover,
        //                                           ),
        //                                         ),
        //                                       ),
        //                                     ),
        //                                   ),
        //                                   const Text(
        //                                     'Mini TV',
        //                                     style: TextStyle(
        //                                         fontSize: 10,
        //                                         fontWeight: FontWeight.bold),
        //                                   ),
        //                                 ],
        //                               ),
        //                               Column(
        //                                 children: [
        //                                   Padding(
        //                                     padding: const EdgeInsets.only(
        //                                         left: 8.0),
        //                                     child: GestureDetector(
        //                                       onTap: () {
        //                                         print('click');
        //                                       },
        //                                       child: Container(
        //                                         alignment: Alignment.center,
        //                                         height: 75,
        //                                         width: 75,
        //                                         decoration: BoxDecoration(
        //                                           color:
        //                                               const Color(0xFFE0E0E0),
        //                                           borderRadius:
        //                                               BorderRadius.circular(45),
        //                                           image: const DecorationImage(
        //                                             image: NetworkImage(
        //                                                 "https://static.toiimg.com/photo/msid-90970312/90970312.jpg"),
        //                                             fit: BoxFit.cover,
        //                                           ),
        //                                         ),
        //                                       ),
        //                                     ),
        //                                   ),
        //                                   const Text(
        //                                     "electronics",
        //                                     style: TextStyle(
        //                                         fontSize: 10,
        //                                         fontWeight: FontWeight.bold),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ],
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             SizedBox(
        //               height: 200,
        //               width: double.infinity,
        //               child: CarouselSlider(
        //                 options: CarouselOptions(
        //                   scrollPhysics: const BouncingScrollPhysics(),
        //                   autoPlay: true,
        //                   aspectRatio: 2,
        //                   viewportFraction: 1,
        //                   height: 900,
        //                 ),
        //                 items: ImageListsignin.map(
        //                   (item) => Container(
        //                     child: Center(
        //                       child: Image.asset(
        //                         item,
        //                         fit: BoxFit.cover,
        //                         width: double.infinity,
        //                       ),
        //                     ),
        //                   ),
        //                 ).toList(),
        //               ),
        //             ),
        //             const SizedBox(
        //               height: 5,
        //             ),
        //             //-------------------------------------------------Tiles--Start--horizontal-------
        //             Container(
        //               width: double.infinity,
        //               height: 220,
        //               color: Colors.transparent,
        //               child: ListView(
        //                 scrollDirection: Axis.horizontal,
        //                 children: <Widget>[
        //                   Row(
        //                     children: [
        //                       Padding(
        //                         padding: const EdgeInsets.only(left: 8.0),
        //                         child: Container(
        //                           width: 175,
        //                           height: 210,
        //                           decoration: BoxDecoration(
        //                             color: const Color(0xFF424242),
        //                             borderRadius: BorderRadius.circular(9),
        //                             boxShadow: const [
        //                               BoxShadow(
        //                                 color: Colors.black,
        //                                 spreadRadius: 1,
        //                                 blurRadius: 20,
        //                                 offset: Offset(2, 2),
        //                               ),
        //                               BoxShadow(
        //                                 color: Colors.white,
        //                                 spreadRadius: 2,
        //                                 blurRadius: 20,
        //                                 offset: Offset(-2, -2),
        //                               ),
        //                             ],
        //                           ),
        //                           //--------------------------------------
        //                           child: Column(
        //                             children: [
        //                               Row(
        //                                 children: [
        //                                   Column(
        //                                     children: [
        //                                       Padding(
        //                                         padding: const EdgeInsets.only(
        //                                             top: 15.0, left: 10),
        //                                         child: Container(
        //                                           width: 70,
        //                                           height: 70,
        //                                           decoration: BoxDecoration(
        //                                             color:
        //                                                 const Color(0xFFE0E0E0),
        //                                             borderRadius:
        //                                                 BorderRadius.circular(
        //                                                     45),
        //                                             image:
        //                                                 const DecorationImage(
        //                                               image: NetworkImage(
        //                                                   "https://mlkzerfyr8za.i.optimole.com/cb:gmSg.98a4/w:auto/h:auto/q:mauto/https://www.gruntify.com/wp-content/uploads/2018/04/grunify-qr-code-barcode-scan-blog-2.jpg"),
        //                                               fit: BoxFit.cover,
        //                                             ),
        //                                           ),
        //                                         ),
        //                                       ),
        //                                       const Padding(
        //                                         padding:
        //                                             EdgeInsets.only(left: 8.0),
        //                                         child: Text(
        //                                           'Scan any QR',
        //                                           style: TextStyle(
        //                                               color: Colors.white,
        //                                               fontSize: 10,
        //                                               fontWeight:
        //                                                   FontWeight.bold),
        //                                         ),
        //                                       ),
        //                                     ],
        //                                   ),
        //                                   Column(
        //                                     children: [
        //                                       Padding(
        //                                         padding: const EdgeInsets.only(
        //                                             top: 15.0, left: 10),
        //                                         child: Container(
        //                                           width: 70,
        //                                           height: 70,
        //                                           decoration: BoxDecoration(
        //                                             color:
        //                                                 const Color(0xFFE0E0E0),
        //                                             borderRadius:
        //                                                 BorderRadius.circular(
        //                                                     45),
        //                                             image:
        //                                                 const DecorationImage(
        //                                               image: NetworkImage(
        //                                                   "https://cdn.thewirecutter.com/wp-content/media/2022/05/bluetoothheadphones-2048px-1134.jpg"),
        //                                               fit: BoxFit.cover,
        //                                             ),
        //                                           ),
        //                                         ),
        //                                       ),
        //                                       const Padding(
        //                                         padding:
        //                                             EdgeInsets.only(left: 8.0),
        //                                         child: Text(
        //                                           'Electronics',
        //                                           style: TextStyle(
        //                                               color: Colors.white,
        //                                               fontSize: 10,
        //                                               fontWeight:
        //                                                   FontWeight.bold),
        //                                         ),
        //                                       ),
        //                                     ],
        //                                   ),
        //                                 ],
        //                               ),
        //                               //-----------------------2-nd--Row----------------------
        //                               Row(
        //                                 children: [
        //                                   Column(
        //                                     children: [
        //                                       Padding(
        //                                         padding: const EdgeInsets.only(
        //                                             top: 15.0, left: 10),
        //                                         child: Container(
        //                                           width: 70,
        //                                           height: 70,
        //                                           decoration: BoxDecoration(
        //                                             color:
        //                                                 const Color(0xFFE0E0E0),
        //                                             borderRadius:
        //                                                 BorderRadius.circular(
        //                                                     45),
        //                                             image:
        //                                                 const DecorationImage(
        //                                               image: NetworkImage(
        //                                                   "https://images.jdmagicbox.com/rep/b2b/electric-appliance/electric-appliance-1.jpg"),
        //                                               fit: BoxFit.cover,
        //                                             ),
        //                                           ),
        //                                         ),
        //                                       ),
        //                                       const Padding(
        //                                         padding:
        //                                             EdgeInsets.only(left: 8.0),
        //                                         child: Text(
        //                                           'Appliance',
        //                                           style: TextStyle(
        //                                               color: Colors.white,
        //                                               fontSize: 10,
        //                                               fontWeight:
        //                                                   FontWeight.bold),
        //                                         ),
        //                                       ),
        //                                     ],
        //                                   ),
        //                                   Column(
        //                                     children: [
        //                                       Padding(
        //                                         padding: const EdgeInsets.only(
        //                                             top: 15.0, left: 10),
        //                                         child: Container(
        //                                           width: 70,
        //                                           height: 70,
        //                                           decoration: BoxDecoration(
        //                                             color:
        //                                                 const Color(0xFFE0E0E0),
        //                                             borderRadius:
        //                                                 BorderRadius.circular(
        //                                                     45),
        //                                             image:
        //                                                 const DecorationImage(
        //                                               image: NetworkImage(
        //                                                   "https://5.imimg.com/data5/YC/GV/XN/ANDROID-83761084/product-jpeg-500x500.jpg"),
        //                                               fit: BoxFit.cover,
        //                                             ),
        //                                           ),
        //                                         ),
        //                                       ),
        //                                       const Padding(
        //                                         padding:
        //                                             EdgeInsets.only(left: 8.0),
        //                                         child: Text(
        //                                           'Shoes',
        //                                           style: TextStyle(
        //                                               color: Colors.white,
        //                                               fontSize: 10,
        //                                               fontWeight:
        //                                                   FontWeight.bold),
        //                                         ),
        //                                       ),
        //                                     ],
        //                                   ),
        //                                 ],
        //                               )
        //                             ],
        //                           ),
        //                           //--------------------------------------
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: const EdgeInsets.only(left: 13.0),
        //                         child: Container(
        //                           width: 175,
        //                           height: 210,
        //                           decoration: BoxDecoration(
        //                             color: Colors.white,
        //                             borderRadius: BorderRadius.circular(9),
        //                             boxShadow: const [
        //                               BoxShadow(
        //                                 color: Colors.black,
        //                                 spreadRadius: 1,
        //                                 blurRadius: 20,
        //                                 offset: Offset(2, 2),
        //                               ),
        //                               BoxShadow(
        //                                 color: Colors.white,
        //                                 spreadRadius: 2,
        //                                 blurRadius: 20,
        //                                 offset: Offset(-2, -2),
        //                               ),
        //                             ],
        //                           ),
        //                           child: Column(
        //                             children: [
        //                               Padding(
        //                                 padding:
        //                                     const EdgeInsets.only(top: 20.0),
        //                                 child: Container(
        //                                   width: 117,
        //                                   height: 40,
        //
        //                                   //color: Colors.red,
        //                                   child: const Text(
        //                                     'Keep Shopping \n New Arrivals',
        //                                     style: TextStyle(
        //                                         color: Colors.black,
        //                                         fontWeight: FontWeight.bold),
        //                                   ),
        //                                 ),
        //                               ),
        //                               Container(
        //                                 width: 140,
        //                                 height: 130,
        //                                 decoration: BoxDecoration(
        //                                   borderRadius:
        //                                       BorderRadius.circular(7),
        //                                   color: Color(0xFFE0E0E0),
        //                                   image: DecorationImage(
        //                                     image: NetworkImage(
        //                                         "https://maplestore.in/wp-content/uploads/2021/10/MacBook_Pro_16-in_Space_Gray_PDP_Image_Position-1__en-IN-scaled.jpg"),
        //                                     fit: BoxFit.cover,
        //                                   ),
        //                                 ),
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: const EdgeInsets.only(left: 13.0),
        //                         child: Container(
        //                           width: 175,
        //                           height: 210,
        //                           decoration: BoxDecoration(
        //                             color: Colors.white,
        //                             borderRadius: BorderRadius.circular(9),
        //                             boxShadow: const [
        //                               BoxShadow(
        //                                 color: Colors.black,
        //                                 spreadRadius: 1,
        //                                 blurRadius: 20,
        //                                 offset: Offset(2, 2),
        //                               ),
        //                               BoxShadow(
        //                                 color: Colors.white,
        //                                 spreadRadius: 2,
        //                                 blurRadius: 20,
        //                                 offset: Offset(-2, -2),
        //                               ),
        //                             ],
        //                           ),
        //                           child: Column(
        //                             children: [
        //                               Padding(
        //                                 padding:
        //                                     const EdgeInsets.only(top: 20.0),
        //                                 child: Container(
        //                                   width: 117,
        //                                   height: 40,
        //
        //                                   //color: Colors.red,
        //                                   child: Center(
        //                                     child: Text(
        //                                       'Pick up where you left off',
        //                                       style: TextStyle(
        //                                           color: Colors.black,
        //                                           fontWeight: FontWeight.bold),
        //                                     ),
        //                                   ),
        //                                 ),
        //                               ),
        //                               Container(
        //                                 width: 140,
        //                                 height: 130,
        //                                 decoration: BoxDecoration(
        //                                   borderRadius:
        //                                       BorderRadius.circular(7),
        //                                   color: Color(0xFFE0E0E0),
        //                                   image: DecorationImage(
        //                                     image: NetworkImage(
        //                                         "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/413FUc3lB4L.jpg"),
        //                                     fit: BoxFit.cover,
        //                                   ),
        //                                 ),
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: const EdgeInsets.only(left: 13.0),
        //                         child: Container(
        //                           width: 175,
        //                           height: 210,
        //                           decoration: BoxDecoration(
        //                             color: Colors.white,
        //                             borderRadius: BorderRadius.circular(9),
        //                             boxShadow: const [
        //                               BoxShadow(
        //                                 color: Colors.black,
        //                                 spreadRadius: 1,
        //                                 blurRadius: 20,
        //                                 offset: Offset(2, 2),
        //                               ),
        //                               BoxShadow(
        //                                 color: Colors.white,
        //                                 spreadRadius: 2,
        //                                 blurRadius: 20,
        //                                 offset: Offset(-2, -2),
        //                               ),
        //                             ],
        //                           ),
        //                           child: Column(
        //                             children: [
        //                               Padding(
        //                                 padding:
        //                                     const EdgeInsets.only(top: 20.0),
        //                                 child: Container(
        //                                   width: 117,
        //                                   height: 40,
        //
        //                                   //color: Colors.red,
        //                                   child: Center(
        //                                     child: Text(
        //                                       "Brand New \n Let's Go",
        //                                       style: TextStyle(
        //                                           color: Colors.black,
        //                                           fontWeight: FontWeight.bold),
        //                                     ),
        //                                   ),
        //                                 ),
        //                               ),
        //                               Container(
        //                                 width: 140,
        //                                 height: 130,
        //                                 decoration: BoxDecoration(
        //                                   borderRadius:
        //                                       BorderRadius.circular(7),
        //                                   color: Color(0xFFE0E0E0),
        //                                   image: DecorationImage(
        //                                     image: NetworkImage(
        //                                         "https://tector.fi/tuotekuvat/1200x1200/iPhone_13_Starlight_PDP_Image_Position-1A__WWEN.jpg"),
        //                                     fit: BoxFit.cover,
        //                                   ),
        //                                 ),
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: const EdgeInsets.only(left: 13.0),
        //                         child: Container(
        //                           width: 175,
        //                           height: 210,
        //                           decoration: BoxDecoration(
        //                             color: Colors.white,
        //                             borderRadius: BorderRadius.circular(9),
        //                             boxShadow: const [
        //                               BoxShadow(
        //                                 color: Colors.black,
        //                                 spreadRadius: 1,
        //                                 blurRadius: 20,
        //                                 offset: Offset(2, 2),
        //                               ),
        //                               BoxShadow(
        //                                 color: Colors.white,
        //                                 spreadRadius: 2,
        //                                 blurRadius: 20,
        //                                 offset: Offset(-2, -2),
        //                               ),
        //                             ],
        //                           ),
        //                           child: Column(
        //                             children: [
        //                               Padding(
        //                                 padding:
        //                                     const EdgeInsets.only(top: 20.0),
        //                                 child: Container(
        //                                   width: 117,
        //                                   height: 40,
        //
        //                                   //color: Colors.red,
        //                                   child: Center(
        //                                     child: Text(
        //                                       'Fashion \n New Arrivals',
        //                                       style: TextStyle(
        //                                           color: Colors.black,
        //                                           fontWeight: FontWeight.bold),
        //                                     ),
        //                                   ),
        //                                 ),
        //                               ),
        //                               Container(
        //                                 width: 140,
        //                                 height: 130,
        //                                 decoration: BoxDecoration(
        //                                   borderRadius:
        //                                       BorderRadius.circular(7),
        //                                   color: const Color(0xFFE0E0E0),
        //                                   image: const DecorationImage(
        //                                     image: NetworkImage(
        //                                         "https://i.pinimg.com/236x/64/f5/01/64f501db467c44445285591ab8ca8512.jpg"),
        //                                     fit: BoxFit.cover,
        //                                   ),
        //                                 ),
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: const EdgeInsets.only(left: 13.0),
        //                         child: Container(
        //                           width: 175,
        //                           height: 210,
        //                           decoration: BoxDecoration(
        //                             color: Colors.white,
        //                             borderRadius: BorderRadius.circular(9),
        //                             boxShadow: const [
        //                               BoxShadow(
        //                                 color: Colors.black,
        //                                 spreadRadius: 1,
        //                                 blurRadius: 20,
        //                                 offset: Offset(2, 2),
        //                               ),
        //                               BoxShadow(
        //                                 color: Colors.white,
        //                                 spreadRadius: 2,
        //                                 blurRadius: 20,
        //                                 offset: Offset(-2, -2),
        //                               ),
        //                             ],
        //                           ),
        //                           child: Column(
        //                             children: [
        //                               Padding(
        //                                 padding:
        //                                     const EdgeInsets.only(top: 20.0),
        //                                 child: Container(
        //                                   width: 117,
        //                                   height: 40,
        //
        //                                   //color: Colors.red,
        //                                   child: const Text(
        //                                     'Keep shopping \n New Arrivals',
        //                                     style: TextStyle(
        //                                         color: Colors.black,
        //                                         fontWeight: FontWeight.bold),
        //                                   ),
        //                                 ),
        //                               ),
        //                               Container(
        //                                 width: 140,
        //                                 height: 130,
        //                                 decoration: BoxDecoration(
        //                                   borderRadius:
        //                                       BorderRadius.circular(7),
        //                                   color: Color(0xFFE0E0E0),
        //                                   image: DecorationImage(
        //                                     image: NetworkImage(
        //                                         "https://img.tatacliq.com/images/i8/437Wx649H/MP000000013257278_437Wx649H_202205261843546.jpeg"),
        //                                     fit: BoxFit.cover,
        //                                   ),
        //                                 ),
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             //---------------------------------------------------Tiles--End---horizontal------
        //             //
        //           ],
        //         ),
        //         Container(
        //           width: double.infinity,
        //           height: 250,
        //           child: Obx(() {
        //             if (productController.isLoading.value) {
        //               return const Center(
        //                 child: CircularProgressIndicator(
        //                   color: Colors.black,
        //                 ),
        //               );
        //             }
        //             return Container(
        //               child: ListView.builder(
        //                 scrollDirection: Axis.horizontal,
        //                 itemCount: productController.productlist.length,
        //                 itemBuilder: (context, index) {
        //                   var imageindex =
        //                       productController.productlist[index].images.first;
        //                   //================image--url====================
        //                   var images = imageindex.url;
        //                   //---------------category---------------------
        //                   var category =
        //                       productController.productlist[index].category;
        //                   //-----------------product-name---------------
        //                   var productname =
        //                       productController.productlist[index].name;
        //                   //------------------Selling--product--price------------
        //                   var discounted =
        //                       productController.productlist[index].discount;
        //                   var discountPrice =
        //                       productController.productlist[index].price;
        //                   var discountPriceinPercentage =
        //                       (discounted / discountPrice) * 100;
        //                   var sellingPrice = discountPrice -
        //                       (discountPrice *
        //                           (discountPriceinPercentage / 100));
        //                   var sellinfinalprice =
        //                       sellingPrice.toStringAsFixed(0);
        //                   //--------------------saving------------------------
        //                   var price =
        //                       productController.productlist[index].price;
        //                   //--------------------discount--in--percentage----------
        //                   var discountnonfixed = (productController
        //                               .productlist[index].discount /
        //                           productController.productlist[index].price) *
        //                       100;
        //                   var discount = discountnonfixed.toStringAsFixed(0);
        //                   //------------------------description------------------
        //                   var description =
        //                       productController.productlist[index].description;
        //                   //--------------------------rating---------------------
        //                   var rating =
        //                       productController.productlist[index].ratings;
        //                   return Padding(
        //                     padding: const EdgeInsets.only(left: 8.0, top: 10),
        //                     child: Container(
        //                       width: 190,
        //                       height: 80,
        //                       decoration: BoxDecoration(
        //                         color: Colors.white,
        //                         borderRadius: BorderRadius.circular(9),
        //                       ),
        //                       child: Column(
        //                         children: [
        //                           Padding(
        //                             padding: const EdgeInsets.only(top: 8.0),
        //                             child: Container(
        //                               width: 160,
        //                               height: 130,
        //                               decoration: BoxDecoration(
        //                                 color: Colors.grey,
        //                                 borderRadius:
        //                                     BorderRadiusDirectional.circular(7),
        //                                 image: DecorationImage(
        //                                   image:
        //                                       NetworkImage(images.toString()),
        //                                   fit: BoxFit.cover,
        //                                 ),
        //                               ),
        //                             ),
        //                           ),
        //                           Container(
        //                             width: 170,
        //                             height: 20,
        //                             // color: Colors.greenAccent,
        //                             child: Text(
        //                               category.toString(),
        //                               style: TextStyle(
        //                                   color: Colors.grey, fontSize: 10),
        //                             ),
        //                           ),
        //                           Container(
        //                             width: 170,
        //                             height: 20,
        //                             // color: Colors.greenAccent,
        //                             child: Text(
        //                               productname.toString(),
        //                               style: TextStyle(
        //                                   color: Colors.black,
        //                                   fontSize: 12,
        //                                   fontWeight: FontWeight.bold),
        //                             ),
        //                           ),
        //                           Padding(
        //                             padding: const EdgeInsets.only(left: 17.0),
        //                             child: Container(
        //                               width: 190,
        //                               height: 20,
        //                               //color: Colors.greenAccent,
        //                               child: Text(
        //                                 '$description',
        //                                 style: TextStyle(
        //                                   color: Colors.black,
        //                                   fontSize: 9,
        //                                 ),
        //                               ),
        //                             ),
        //                           ),
        //                           Padding(
        //                             padding: const EdgeInsets.only(left: 10.0),
        //                             child: Row(
        //                               children: [
        //                                 Container(
        //                                   width: 55,
        //                                   height: 20,
        //                                   //  color: Colors.red,
        //                                   child: Padding(
        //                                     padding: const EdgeInsets.only(
        //                                         top: 1.0, left: 10.0),
        //                                     child: Text(
        //                                       price.toString(),
        //                                       style: const TextStyle(
        //                                           color: Colors.grey,
        //                                           fontSize: 11,
        //                                           fontWeight: FontWeight.w500,
        //                                           decoration: TextDecoration
        //                                               .lineThrough),
        //                                     ),
        //                                   ),
        //                                 ),
        //                                 Padding(
        //                                   padding:
        //                                       const EdgeInsets.only(left: 5.0),
        //                                   child: Container(
        //                                     width: 50,
        //                                     height: 20,
        //                                     //   color: Colors.greenAccent,
        //                                     child: Text(
        //                                       '₹${sellinfinalprice}',
        //                                       style: TextStyle(
        //                                           color: Colors.black,
        //                                           fontSize: 12,
        //                                           fontWeight: FontWeight.bold),
        //                                     ),
        //                                   ),
        //                                 ),
        //                                 Padding(
        //                                   padding:
        //                                       const EdgeInsets.only(left: 5.0),
        //                                   child: Container(
        //                                     width: 50,
        //                                     height: 20,
        //                                     //   color: Colors.amber,
        //                                     child: Text(
        //                                       '${discount}% off',
        //                                       style: TextStyle(
        //                                           color: Colors.green,
        //                                           fontSize: 12,
        //                                           fontWeight: FontWeight.bold),
        //                                     ),
        //                                   ),
        //                                 ),
        //                               ],
        //                             ),
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                   );
        //                 },
        //               ),
        //             );
        //           }),
        //         ),
        //         const SizedBox(
        //           height: 10,
        //         ),
        //         Container(
        //           width: 200,
        //           height: 400,
        //           decoration: BoxDecoration(
        //             color: Colors.blueGrey,
        //             borderRadius: BorderRadius.circular(7),
        //             image: DecorationImage(
        //               image: NetworkImage(
        //                   'https://ecomnews.in/wp-content/uploads/2023/01/Top-Branded-Watches-for-Men-in-India.jpg'),
        //               fit: BoxFit.cover,
        //             ),
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 10,
        //         ),
        //         //-----------
        //       ],
        //     )),
      ),
    );
  }
}
