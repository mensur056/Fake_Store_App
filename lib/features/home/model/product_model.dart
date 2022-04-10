import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel extends INetworkModel<ProductModel> {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  @override
  ProductModel fromJson(Map<String, dynamic> json) {
    return _$ProductModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _ProductModelToJson(this);
  }
}

// class products {

//
//   products(
//       {this.id,
//         this.title,
//         this.price,
//         this.description,
//         this.category,
//         this.image,
//         this.rating});
//
//   products.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     price = json['price'];
//     description = json['description'];
//     category = json['category'];
//     image = json['image'];
//     rating =
//     json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['price'] = this.price;
//     data['description'] = this.description;
//     data['category'] = this.category;
//     data['image'] = this.image;
//     if (this.rating != null) {
//       data['rating'] = this.rating!.toJson();
//     }
//     return data;
//   }
// }
//
@JsonSerializable()
class Rating {
  final double? rate;
  final int? count;

  Rating({this.rate, this.count});

  factory Rating.fromJson(Map<String, dynamic> json) {
    return _$RatingFromJson(json);
  }
}
