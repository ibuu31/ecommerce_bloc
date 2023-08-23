import 'package:ecommerce_bloc/models/category_model.dart';
import 'package:ecommerce_bloc/models/product_model.dart';
import 'package:ecommerce_bloc/widgets/product_card.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_navbar.dart';

class CatalogScreen extends StatelessWidget {
  final Category category;
  const CatalogScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProduct = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
        appBar: CustomAppBar(
          title: category.name,
        ),
        bottomNavigationBar: const CustomNavBar(),
        body: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            itemCount: categoryProduct.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.15),
            itemBuilder: (context, index) {
              return Center(
                  child: ProductCard(
                products: categoryProduct[index],
                widthFactor: 2.2,
                leftPosition: 100,
              ));
            }));
  }
}
