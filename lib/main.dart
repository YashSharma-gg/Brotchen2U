
import 'package:brotchen2u/category_web.dart';
import 'package:brotchen2u/product_page_web.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'address_web.dart';
import 'order_history_web.dart';
import 'orderdetails_web.dart';


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
  runApp( MaterialApp(home: OrderHistoryWeb(), scrollBehavior: MyCustomScroll(),));
}