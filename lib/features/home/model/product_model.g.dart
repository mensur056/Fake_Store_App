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

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'rating': instance.rating,
    };

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
      rate: (json['rate'] as num?)?.toDouble(),
      count: json['count'] as int?,
    );
Map<String, dynamic>  _$RatingToJson(Rating instance)=><String ,dynamic>{
  'rate':instance.rate,
  'count':instance.count
};