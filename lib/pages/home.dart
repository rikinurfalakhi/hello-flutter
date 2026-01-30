import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hello_flutter/pages/profile.dart';

// Future<Map<String, dynamic>> fetchTodo() async {
//   final response =
//       await http.get(Uri.parse('https://fakestoreapi.com/products'));

//   if (response.statusCode == 200) {
//     return jsonDecode(response.body);
//   } else {
//     throw Exception('Failed to fetch data');
//   }
// }

class Product {
  final String title;
  final double price;
  final String image;
  final String description;
  final String category;

  Product(
      {required this.title,
      required this.image,
      required this.price,
      required this.description,
      required this.category});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        title: json['title'],
        price: (json['price'] as num).toDouble(),
        description: json['description'],
        image: json['image'],
        category: json['category']);
  }
}

Future<List<Product>> fetchProducts() async {
  final response =
      await http.get(Uri.parse('https://fakestoreapi.com/products'));

  if (response.statusCode == 200) {
    final List data = jsonDecode(response.body);
    return data.map((item) => Product.fromJson(item)).toList();
  } else {
    throw Exception("Failed to fetch the product's data");
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Product>>(
        future: fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }
          final products = snapshot.data!;
          return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                    child: ListTile(
                  leading: Image.network(
                    product.image,
                    width: 80,
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                  title: Text(product.title),
                  subtitle: Text(product.category),
                ));
              });
        },
      ),
    );
    ;
  }
}
