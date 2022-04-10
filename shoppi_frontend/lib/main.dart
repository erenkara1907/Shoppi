import 'package:flutter/material.dart';
import 'package:shoppi_frontend/features/product/view/product.dart';

Future<void> main() async {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoppi',
      home: Product(), 
    );
  }
}
