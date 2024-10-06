import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class ProductCategoryScreen extends StatelessWidget {
  final String category;

  ProductCategoryScreen({required this.category});

  final List<Product> products = [
    Product(
      name: 'Arete Dorado',
      description: 'Hermosos aretes dorados.',
      price: 15000,
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRrR9cirutn3Ipn0H8Owzy_HPEY5D8sFAJRQ&s',
      category: 'Aretes',
      stock: 10,
    ),
    Product(
      name: 'Arete Plateado',
      description: 'Elegantes aretes plateados.',
      price: 17000,
      imageUrl: 'https://example.com/arete_plateado.jpg',
      category: 'Aretes',
      stock: 5,
    ),
    Product(
      name: 'Bolso de Cuero',
      description: 'Bolso de cuero de alta calidad.',
      price: 120000,
      imageUrl: 'https://example.com/bolso_cuero.jpg',
      category: 'Bolsos',
      stock: 8,
    ),
    Product(
      name: 'Bolso de Tela',
      description: 'Bolso de tela artesanal.',
      price: 80000,
      imageUrl: 'https://example.com/bolso_tela.jpg',
      category: 'Bolsos',
      stock: 12,
    ),
    Product(
      name: 'Termo Deportivo',
      description: 'Termo deportivo de 1 litro.',
      price: 25000,
      imageUrl: 'https://example.com/termo_deportivo.jpg',
      category: 'Termos',
      stock: 15,
    ),
    Product(
      name: 'Termo Clásico',
      description: 'Termo clásico de acero inoxidable.',
      price: 30000,
      imageUrl: 'https://example.com/termo_clasico.jpg',
      category: 'Termos',
      stock: 9,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<Product> filteredProducts =
        products.where((p) => p.category == category).toList();

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
      ),
      itemCount: filteredProducts.length,
      itemBuilder: (context, index) {
        return ProductCard(product: filteredProducts[index]);
      },
    );
  }
}
