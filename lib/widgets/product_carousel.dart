import 'package:ecommerce_bloc/models/product_model.dart';
import 'package:ecommerce_bloc/widgets/product_card.dart';
import 'package:flutter/material.dart';

//We have created here a product carousel, all the available products will be show here.
class ProductCarousel extends StatelessWidget {
  final List<Product> products;
  const ProductCarousel({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: 165,
        child: ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 5),
                child: ProductCard(
                  products: products[index],
                  widthFactor: 2.2,
                  leftPosition: 100,
                ),
              );
            }),
      ),
    );
  }
}
