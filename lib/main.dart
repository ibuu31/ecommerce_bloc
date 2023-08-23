import 'package:ecommerce_bloc/config/app_router.dart';
import 'package:ecommerce_bloc/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: AppRouter.onGenerateRoute,
      home: HomePage(),
    );
  }
}
