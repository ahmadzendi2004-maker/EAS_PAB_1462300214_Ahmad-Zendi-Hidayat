import 'package:flutter/material.dart';
import '../models/product.dart';

class DetailPage extends StatelessWidget {
  final Product product;
  final Function(Product) onAddToCart;

  const DetailPage({
    super.key,
    required this.product,
    required this.onAddToCart,
  });

  String rupiah(double price) {
    return 'Rp ${(price * 16000).toStringAsFixed(0)}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      appBar: AppBar(
        title: const Text('Detail Produk'),
        backgroundColor: const Color(0xffb71c1c),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            height: 300,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Image.network(
              product.image,
              fit: BoxFit.contain,
            ),
          ),

          const SizedBox(height: 20),

          Text(
            product.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            rupiah(product.price),
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xffb71c1c),
            ),
          ),

          const SizedBox(height: 14),

          Row(
            children: [
              const Icon(Icons.star, color: Colors.orange),
              const SizedBox(width: 6),
              Text(
                '${product.rating} (${product.ratingCount} ulasan)',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Chip(
            label: Text(product.category),
            backgroundColor: Colors.red.shade50,
            side: BorderSide(color: Colors.red.shade200),
          ),

          const SizedBox(height: 20),

          const Text(
            'Deskripsi Produk',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            product.description,
            style: const TextStyle(
              fontSize: 16,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 30),

          SizedBox(
            height: 54,
            child: ElevatedButton.icon(
              onPressed: () {
                onAddToCart(product);
              },
              icon: const Icon(Icons.shopping_cart),
              label: const Text(
                'Tambah ke Keranjang',
                style: TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffb71c1c),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}