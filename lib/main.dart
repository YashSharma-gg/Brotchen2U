
import 'package:brotchen2u/addaddress.dart';
import 'package:brotchen2u/addresspage.dart';
import 'package:brotchen2u/cart.dart';
import 'package:brotchen2u/category_page.dart';
import 'package:brotchen2u/login_page.dart';

import 'product_page.dart';
import 'package:flutter/material.dart';
import 'drawer_page.dart';
import 'home_page.dart';
import 'cart.dart';

void main(List<String> args) {
  runApp( MaterialApp(home: AddAddress()));
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

