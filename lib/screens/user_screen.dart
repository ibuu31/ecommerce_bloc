import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_navbar.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //here we have created a custom app bar which we can use multiple times with different names.
      appBar: CustomAppBar(
        title: 'User Account',
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
