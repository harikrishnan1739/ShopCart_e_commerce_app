// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../Models/productdetails/product.dart';
//
// class ProductTile extends StatelessWidget {
//   final Product productlist;
//   const ProductTile(this.productlist);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Card(
//       elevation: 2,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: 180,
//                   width: double.infinity,
//                   clipBehavior: Clip.antiAlias,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(4),
//                     image: DecorationImage(
//                       image: NetworkImage(
//                         'https://m.media-amazon.com/images/I/71VR6c3j2bL._SL1500_.jpg'
//                         // productlist.images,
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Positioned(
//                 //   right: 0,
//                 //   child: Obx(() => CircleAvatar(
//                 //     backgroundColor: Colors.white,
//                 //     child: IconButton(
//                 //       icon: productlist..value
//                 //           ? Icon(Icons.favorite_rounded)
//                 //           : Icon(Icons.favorite_border),
//                 //       onPressed: () {
//                 //         productlist.isFavorite.toggle();
//                 //       },
//                 //     ),
//                 //   )),
//                 // )
//               ],
//             ),
//             SizedBox(height: 8),
//             Text(
//               productlist.name.toString(),
//               maxLines: 2,
//               style:
//                   TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
//               overflow: TextOverflow.ellipsis,
//             ),
//             SizedBox(height: 8),
//             if (productlist.ratings.toString() != null)
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.green,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       productlist.ratings.toString(),
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     Icon(
//                       Icons.star,
//                       size: 16,
//                       color: Colors.white,
//                     ),
//                   ],
//                 ),
//               ),
//             SizedBox(height: 8),
//             Text('\$${productlist.price}',
//                 style: TextStyle(fontSize: 32, fontFamily: 'avenir')),
//           ],
//         ),
//       ),
//     );
//   }
// }
