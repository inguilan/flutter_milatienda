class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl; // Añadido campo para la imagen
  final String category;
  final int stock;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    this.stock = 0,
  });
}
