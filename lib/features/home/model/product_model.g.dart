part of 'product_model.dart';

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel()
  ..id = json['id'] as int?
  ..title = json['title'] as String?
  ..price = (json['price'] as num?)?.toDouble()
  ..description = json['description'] as String?
  ..category = json['category'] as String?
  ..image = json['image'] as String?
  ..rating = json['rating'] == null
      ? null
      : Rating.fromJson(json['rating'] as Map<String, dynamic>);
