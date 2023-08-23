import 'package:ecommerce_bloc/models/category_model.dart';
import 'package:ecommerce_bloc/models/product_model.dart';
import 'package:flutter/material.dart';

//this class is for the image box that is created in the slide.
class HeroCarousel extends StatelessWidget {
  //creating an instance of category class to get access of name and url from that page.
  final Category? category;
  final Product? product;
  const HeroCarousel({super.key, this.category, this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (product == null) {
          Navigator.pushNamed(context, '/catalog', arguments: category);
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        //ClipRRect is used to give border to the image box.
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(
                  product == null ? category!.imageUrl : product!.imageUrl,
                  fit: BoxFit.cover,
                  width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(product == null ? category!.name : product!.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
