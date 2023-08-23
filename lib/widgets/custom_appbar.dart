import 'package:flutter/material.dart';

//PreferredSizeWidget is an interface which specify the Size of the Widget to the child which is using the Widget. It is necessary to implement this when extracting appbar or tab-bar.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
//here we have created a custom app bar which we can use multiple times with different names.
  const CustomAppBar({
    super.key,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        margin: const EdgeInsets.only(top: 10),
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white)),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/wishlist');
          },
          icon: const Icon(Icons.favorite),
        )
      ],
    );
  }

//preferredSize is returning a Size which is used to define a size of appbar where we want to specify a preferred height of 50.
  @override
  Size get preferredSize => const Size.fromHeight(50);
}
