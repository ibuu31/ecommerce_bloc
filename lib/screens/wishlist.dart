import 'package:ecommerce_bloc/models/product_model.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_navbar.dart';
import '../widgets/product_card.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //here we have created a custom app bar which we can use multiple times with different names.
      appBar: const CustomAppBar(
        title: 'Wishlist Page',
      ),
      bottomNavigationBar: const CustomNavBar(),
      body: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          itemCount: Product.products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, childAspectRatio: 2.4),
          itemBuilder: (context, index) {
            return Center(
                child: ProductCard(
              products: Product.products[index],
              widthFactor: 1.1,
              leftPosition: 100,
            ));
          }),
    );
  }
}
