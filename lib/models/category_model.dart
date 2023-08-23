import 'package:equatable/equatable.dart';

//this class is representing the image sliding carousel.
class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category(this.name, this.imageUrl);

  //props will return a list of objects of any type including null also, it is used to define the list of property that should be considered when determining the equality of two objects of same class.
  @override
  List<Object?> get props => [name, imageUrl];
  static List<Category> categories = [
    const Category(
      'Soft Drink',
      'https://images.unsplash.com/photo-1534057308991-b9b3a578f1b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    ),
    const Category('Smoothies',
        'https://images.unsplash.com/photo-1502741224143-90386d7f8c82?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
    const Category('Water',
        'https://images.unsplash.com/photo-1559839914-17aae19cec71?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
  ];
}
