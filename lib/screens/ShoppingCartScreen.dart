import 'package:flutter/material.dart';
import '../models/product.dart';

class ShoppingCartScreen extends StatefulWidget {
  static List<Product> cartItems = [];

  static void addToCart(Product product) {
    cartItems.add(product);
  }

  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de Compras'),
      ),
      body: ShoppingCartScreen.cartItems.isEmpty
          ? Center(child: Text('El carrito está vacío'))
          : ListView.builder(
              itemCount: ShoppingCartScreen.cartItems.length,
              itemBuilder: (context, index) {
                final product = ShoppingCartScreen.cartItems[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text('Precio: \$${product.price}'),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_shopping_cart),
                    onPressed: () {
                      setState(() {
                        ShoppingCartScreen.cartItems.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
    );
  }
}
