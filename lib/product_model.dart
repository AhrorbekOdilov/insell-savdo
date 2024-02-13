class ProductModel {
  final int id;
  final String? name;
  final int? quantity;
  final double? price;

  ProductModel({
    required this.id,
    this.name,
    this.quantity,
    this.price,
  });
}
