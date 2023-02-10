class Product {
  final String name;
  final int category_id;
  final String image_url;

  const Product({
    required this.name,
    required this.category_id,
    required this.image_url,
  });

  factory Product.fromJson(Map<List, dynamic> json) {
    return Product(
      name: json['name'],
      image_url: json['image_url'],
      category_id: json['category_id'],
    );
  }
}