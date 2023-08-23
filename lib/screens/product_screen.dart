import 'package:ecommerce_bloc/models/product_model.dart';
import 'package:ecommerce_bloc/widgets/hero_carousel.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_navbar.dart';

class ProductScreen extends StatelessWidget {
  final Product product;
  const ProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //here we have created a custom app bar which we can use multiple times with different names.
      appBar: CustomAppBar(
        title: product.name,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  color: Colors.white,
                  onPressed: () {
                    // Navigator.pushNamed(context, '/');
                  },
                  icon: const Icon(Icons.share)),
              IconButton(
                  color: Colors.white,
                  onPressed: () {
                    // Navigator.pushNamed(context, '/cart');
                  },
                  icon: const Icon(Icons.favorite)),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/user');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  'ADD TO CART',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      //this class is for a particular product description.
      body: ListView(children: [
        HeroCarousel(product: product),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width,
                height: 60,
                color: Colors.black.withAlpha(50),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width - 10,
                height: 50,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        '\$${product.price}',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ExpansionTile(
            title: Text(
              'Product Description',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            children: [
              ListTile(
                title: Text(
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ExpansionTile(
            title: Text(
              'Delivery Description',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            children: [
              ListTile(
                title: Text(
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in ',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
