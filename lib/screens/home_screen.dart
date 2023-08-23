import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_bloc/models/category_model.dart';
import 'package:ecommerce_bloc/models/product_model.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_navbar.dart';
import '../widgets/hero_carousel.dart';
import '../widgets/product_carousel.dart';
import '../widgets/section_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  ///Todo give a constant padding.
  ///Todo reusable container for background.
  ///Todo product name and price reusable widget.
  ///Todo reusable text-theme.
  ///Todo add proper comments with specifying each and every thing with re-watching the video.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //here we have created a custom app bar which we can use multiple times with different names.
      appBar: const CustomAppBar(
        title: 'E-Commerce App',
      ),
      bottomNavigationBar: const CustomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              //items are getting a list which are available in category, but they are going through HeroCarousel in which they're creating in a form of box.
              items: Category.categories
                  .map((category) => HeroCarousel(category: category))
                  .toList(),
            ),
            const SectionTitle(title: 'RECOMMENDED'),
            ProductCarousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList(),
            ),
            const SectionTitle(title: 'Most Popular'),
            ProductCarousel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
