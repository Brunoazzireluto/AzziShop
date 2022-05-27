import 'package:azzi_shop/pages/product_detail_page.dart';
import 'package:azzi_shop/pages/products_overview_page.dart';
import 'package:azzi_shop/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData(fontFamily: 'Lato');

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: tema.copyWith(
        colorScheme: tema.colorScheme.copyWith(
          primary: Colors.deepOrange,
          secondary: Colors.cyanAccent,
        ),
      ),
      home: ProductsOverviewPage(),
      routes: {
        AppRoutes.PRODUCT_DETAIL: (context) => const ProductDetailPage()
      },
    );
  }
}
