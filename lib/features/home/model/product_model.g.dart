part of 'product_model.dart';

ProductModel _$ProductModelFromJson(Map<String, dynamic>json) =>
    ProductModel()
      ..id = json['id'] as int?
    ..title=json['title']as