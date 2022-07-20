
import 'package:brotchen2u/category_web.dart';
import 'package:brotchen2u/product_page_web.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'categorypage_web.dart';
import 'homepage_web.dart';

class MyCustomScroll extends MaterialScrollBehavior{
  @override
  Set<PointerDeviceKind> get dragDevices =>{
      PointerDeviceKind.mouse,
      PointerDeviceKind.touch,
      PointerDeviceKind.trackpad,
      PointerDeviceKind.unknown
  };
}


void main(List<String> args) {
  runApp( MaterialApp(home: ProductPageWeb(), scrollBehavior: MyCustomScroll(),));
}