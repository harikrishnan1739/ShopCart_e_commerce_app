// To parse this JSON data, do
//
//     final productListPage = productListPageFromJson(jsonString);

// To parse this JSON data, do
//
//     final productList = productListFromJson(jsonString);

class Product {
  Product({
    required this.id,
    required this.ratings,
    required this.stock,
    required this.numOfReviews,
    required this.name,
    required this.price,
    required this.discount,
    required this.shortDescription,
    required this.description,
    required this.category,
    required this.images,
    required this.user,
    required this.reviews,
    required this.createdAt,
    required this.v,
  });

  String id;
  int ratings;
  int stock;
  String name;
  int numOfReviews;
  int price;
  int discount;
  String shortDescription;
  String description;
  String category;
  List<Image> images;
  String user;
  List<Review> reviews;
  DateTime createdAt;
  int v;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["_id"],
        ratings: json["ratings"],
        stock: json["Stock"],
        numOfReviews: json["numOfReviews"],
        name: json["name"],
        price: json["price"],
        discount: json["discount"],
        shortDescription: json["shortDescription"],
        description: json["description"],
        category: json["category"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        user: json["user"],
        reviews:
            List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
        createdAt: DateTime.parse(json["createdAt"]),
        v: json["__v"],
      );
}

class Image {
  Image({
    required this.id,
    required this.publicId,
    required this.url,
  });

  String? id;
  String? publicId;
  String? url;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["_id"],
        publicId: json["public_id"],
        url: json["url"],
      );
}

class Review {
  Review({
    required this.id,
    required this.user,
    required this.name,
    required this.rating,
    required this.comment,
  });

  String? id;
  String? user;
  String? name;
  int? rating;
  String? comment;

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["_id"],
        user: json["user"],
        name: json["name"],
        rating: json["rating"],
        comment: json["comment"],
      );
}
class Search {
  final String name;
  final String description;
  final int price;
  final  List<Image> images;

  Search({required this.name, required this.description, required this.price,required this.images});
}