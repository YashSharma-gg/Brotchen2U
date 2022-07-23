import 'dart:ui';

import 'package:brotchen2u/custom_app_bar.dart';
import 'package:brotchen2u/tiles_and_cards_of_products.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'about_us.dart';
import 'button.dart';

class OrderDetailsWeb extends StatefulWidget {
  const OrderDetailsWeb({Key? key}) : super(key: key);

  @override
  State<OrderDetailsWeb> createState() => _OrderDetailsWebState();
}

class _OrderDetailsWebState extends State<OrderDetailsWeb> {
  @override
  Widget build(BuildContext context) {
    final double _widthS = MediaQuery.of(context).size.width;
    final double _heightS = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: Drawer(),
      drawerScrimColor: Colors.grey,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: LayoutBuilder(builder: (context, constraints) {
              return _widthS >= 860
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 40,
                        ),

                        // Products
                        Expanded(
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              width: _widthS * 0.6,
                              height: 600,
                              child: SingleChildScrollView(
                                child: Column(children: [
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  Text(
                                    'My Cart',
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  const CartProducts(
                                    name: 'Product 1',
                                    price: 99,
                                    color: Colors.amber,
                                    count: 2  ,
                                  ),
                                  const CartProducts(
                                    name: 'Product 2',
                                    price: 69,
                                    color: Colors.amber,
                                    count: 1
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 32,
                        ),

                        // Price Details
                        Column(
                          children: [
                            Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                                child: Container(
                              width: _widthS/3.5,
                              padding: EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Delivery Address',
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                  Text(
                                      '---------------------------------------------------------------',
                                      style: TextStyle(
                                          color: Colors.grey[300],
                                          fontSize: _widthS / 80,
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    'Address Line 1',
                                    style: TextStyle(color: Colors.grey[400]),
                                  ),
                                  Text(
                                    'Address Line 2',
                                    style: TextStyle(color: Colors.grey[400]),
                                  ),
                                  Text(
                                    'Address Line 3',
                                    style: TextStyle(color: Colors.grey[400]),
                                  ),
                                  Text(
                                    'Address Line 4',
                                    style: TextStyle(color: Colors.grey[400]),
                                  ),
                                ],
                              ),
                            )),

                            SizedBox(height: 24,),

                            Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                width: _widthS * 0.32,
                                padding: EdgeInsets.all(24),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Price Details',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Center(
                                        child: Text(
                                            '------------------------------------------------------------------------------',
                                            style: TextStyle(
                                                color: Colors.grey[300],
                                                fontSize: _widthS / 80,
                                                fontWeight: FontWeight.bold))),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    PriceDetails(
                                      name: 'Cart Total',
                                      price: '\$299',
                                    ),
                                    PriceDetails(
                                        name: 'Shipping Charges', price: '\$5'),
                                    PriceDetails(
                                        name: 'Delivery Charges', price: '\$2'),
                                    Center(
                                        child: Text(
                                            '------------------------------------------------------------------------------',
                                            style: TextStyle(
                                                color: Colors.grey[300],
                                                fontSize: _widthS / 80,
                                                fontWeight: FontWeight.bold))),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    PriceDetails(
                                        name: 'Total Price', price: '\$306'),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Center(
                                        child: BuyButton(
                                          onTap: (){print(_widthS);},
                                      name: 'Reorder',
                                      color: Colors.orange,
                                      height: 60,
                                    ))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                                child: Container(
                              width: _widthS,
                              padding: EdgeInsets.all(16),
                              child: Row(
                              
                                children: [
                                  Text(
                                    'Delivery Address : ',
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                  
                                  Text(
                                    'B-11 Chetakpuri, Jhansi Road, Gwalior',
                                    style: TextStyle(color: Colors.grey[500]),
                                  ),
                                  // Text(
                                  //   'Address Line 1',
                                  //   style: TextStyle(color: Colors.grey[500]),
                                  // ),
                                  // Text(
                                  //   'Address Line 2',
                                  //   style: TextStyle(color: Colors.grey[500]),
                                  // ),
                                  // Text(
                                  //   'Address Line 3',
                                  //   style: TextStyle(color: Colors.grey[500]),
                                  // ),
                                  // Text(
                                  //   'Address Line 4',
                                  //   style: TextStyle(color: Colors.grey[500]),
                                  // ),
                                ],
                              ),
                            )),
                            const SizedBox(
                          height: 32,
                        ),
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            width: _widthS * 0.9,
                            height: 600,
                            child: SingleChildScrollView(
                              child: Column(children: [
                                const SizedBox(
                                  height: 24,
                                ),
                                Text(
                                  'My Cart',
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                const CartProducts(
                                  name: 'Product 1',
                                  price: 99,
                                  color: Colors.amber,
                                  count: 1,
                                ),
                                const CartProducts(
                                  name: 'Product 2',
                                  price: 69,
                                  color: Colors.amber,
                                  count: 1,
                                )
                              ]),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),

                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            width: _widthS * 0.9,
                            padding: EdgeInsets.all(24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Price Details',
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 8,
                                ),
                                Center(
                                    child: Text(
                                        '------------------------------------------------------------------------------',
                                        style: TextStyle(
                                            color: Colors.grey[300],
                                            fontSize: _widthS / 80,
                                            fontWeight: FontWeight.bold))),
                                SizedBox(
                                  height: 16,
                                ),
                                PriceDetails(
                                  name: 'Cart Total',
                                  price: '\$299',
                                ),
                                PriceDetails(
                                    name: 'Shipping Charges', price: '\$5'),
                                PriceDetails(
                                    name: 'Delivery Charges', price: '\$2'),
                                Center(
                                    child: Text(
                                        '------------------------------------------------------------------------------',
                                        style: TextStyle(
                                            color: Colors.grey[300],
                                            fontSize: _widthS / 80,
                                            fontWeight: FontWeight.bold))),
                                SizedBox(
                                  height: 16,
                                ),
                                PriceDetails(
                                    name: 'Total Price', price: '\$306'),
                                SizedBox(
                                  height: 16,
                                ),
                                Center(
                                    child: BuyButton(
                                  onTap: (){},
                                  name: 'Reorder',
                                  color: Colors.orange,
                                  height: 60,
                                ))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                      ],
                    );
            }),
          ),
          
          const SizedBox(
            height: 80,
          ),
          const AboutUs(),
        ],
      )),
    );
  }
}
