class ProductModel {
  final String name;
  final double price;
  final String image;
  final String description;
  bool isFavorite;

  ProductModel({
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    this.isFavorite = false,
  });
}
