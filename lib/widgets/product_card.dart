import 'package:ecommerce_bloc/models/product_model.dart';
import 'package:flutter/material.dart';

//this class is of product box that is available on the catalog screen and home-screen.
class ProductCard extends StatelessWidget {
  final Product products;
  final double widthFactor;
  final double leftPosition;
  const ProductCard({
    super.key,
    required this.products,
    required this.widthFactor,
    required this.leftPosition,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product', arguments: products);
      },
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / widthFactor,
            height: 150,
            child: Image.network(
              products.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 65,
            left: leftPosition,
            child: Container(
              width: MediaQuery.of(context).size.width / widthFactor - 10,
              height: 70,
              decoration: const BoxDecoration(color: Colors.black),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products.name,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            '\$${products.price.toString()}',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(Icons.add_circle)),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
