import 'package:ecommerce_bloc/models/category_model.dart';
import 'package:ecommerce_bloc/models/product_model.dart';
import 'package:ecommerce_bloc/screens/cart_screen.dart';
import 'package:ecommerce_bloc/screens/catalog_screen.dart';
import 'package:ecommerce_bloc/screens/home_screen.dart';
import 'package:ecommerce_bloc/screens/product_screen.dart';
import 'package:ecommerce_bloc/screens/user_screen.dart';
import 'package:ecommerce_bloc/screens/wishlist.dart';
import 'package:flutter/material.dart';

//this page is handling all the routing.
class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    debugPrint('This is a route ${settings.name}');
    debugPrint('This is a route ${settings.arguments}');

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case '/cart':
        return MaterialPageRoute(
          builder: (context) => const CartScreen(),
        );
      case '/user':
        return MaterialPageRoute(
          builder: (context) => const UserPage(),
        );
      case '/catalog':
        // The settings.arguments is an object that is passed along with the route when navigating, and it's expected to be of type Category. Basically if we click on the carousels it will take all the object available in catalog class like name and imageUrl, it will navigate it to catalog screen.
        return MaterialPageRoute(
          builder: (context) =>
              CatalogScreen(category: settings.arguments as Category),
        );
      case '/product':
        return MaterialPageRoute(
          builder: (context) => ProductScreen(
            product: settings.arguments as Product,
          ),
        );
      case '/wishlist':
        return MaterialPageRoute(
          builder: (context) => const WishlistScreen(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
