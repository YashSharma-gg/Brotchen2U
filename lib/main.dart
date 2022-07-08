
import 'package:brotchen2u/category_page.dart';
import 'package:brotchen2u/login_page.dart';

import 'product_page.dart';
import 'package:flutter/material.dart';
import 'drawer_page.dart';
import 'home_page.dart';

void main(List<String> args) {
  runApp(const MaterialApp(home: ProductPage()));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const <Widget>[
          DrawerPage(),
          HomePage(),

        ],
      ),
    );
  }
}

