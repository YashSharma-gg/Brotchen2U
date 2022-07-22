
import 'package:brotchen2u/custom_app_bar.dart';
import 'package:brotchen2u/product_cards.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'button.dart';
import 'mostconsumed_tiles.dart';

class ProductPageWeb extends StatefulWidget {
  const ProductPageWeb({Key? key}) : super(key: key);

  @override
  State<ProductPageWeb> createState() => _ProductPageWebState();
}

class _ProductPageWebState extends State<ProductPageWeb> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    double _heightS = MediaQuery.of(context).size.height;
    double _widthS = MediaQuery.of(context).size.width;
    
    
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: Drawer(),
      drawerScrimColor: Colors.grey,

      body: SingleChildScrollView(
        padding: EdgeInsets.only(top:8),
        child: Column(
          children: [
            Card(
              
              child: SizedBox(
                width: _widthS*0.95,
                height: _heightS,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                      return _widthS>=675 ? Row(
                        children: [
                          SizedBox(
                          width: _widthS*0.7,
                          height: _heightS*0.9,
                          child: GridView(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _widthS>= 768 ? 3: (_widthS>=535 && _widthS<768) ? 2 : 1 , mainAxisExtent: _heightS/(MediaQuery.of(context).size.height >= 240 ? 2.5 : 1.8) , mainAxisSpacing: 8, crossAxisSpacing: 8),
                          padding: const EdgeInsets.all(8),
                          children: [
                            Product_Image(widthS: _widthS, name: '1',),
                            Product_Image(widthS: _widthS,name:  '2',),
                            Product_Image(widthS: _widthS, name: '3',),
                            Product_Image(widthS: _widthS, name: '4',),
                            Product_Image(widthS: _widthS, name: '5',),
                            Product_Image(widthS: _widthS, name: '6',),
                          ],
                          ), 
                                                 ),
                         SizedBox(width: 16),
                         Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text('Coffee with Croissants', style: TextStyle(fontSize: _widthS>=1280?30:_widthS>=872 && _widthS<1280 ?20 : 15),),
                        
                        SizedBox(height: 8),
                        Text('Croissants',style: TextStyle(fontSize: _widthS>=1280?30:_widthS>=872 && _widthS<1280 ?20 : 15, color: Colors.black54),),
                        SizedBox(height: 8),
                        Text('\$99.99',style: TextStyle(fontSize: _widthS>=1280?30:_widthS>=872 && _widthS<1280 ?20 : 15, color: Colors.grey[800]),),
                        SizedBox(height: 32),
                        BuyButton(widthS: _widthS, name: 'Add to cart', colors: Colors.green,),
                        SizedBox(height: 16),
                        BuyButton(widthS: _widthS, name: 'Wishlist', colors: Colors.green,),
                      ],
                    )
                        ],
                      ): SingleChildScrollView(
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              child: SizedBox(
                              width: _widthS*0.7,
                              height: _heightS*0.4,
                              child: GridView(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _widthS>= 768 ? 3: (_widthS>=535 && _widthS<768) ? 2 : 1 , mainAxisExtent: _heightS/(MediaQuery.of(context).size.height >= 240 ? 2.5 : 1.8) , mainAxisSpacing: 8, crossAxisSpacing: 8),
                              padding: const EdgeInsets.all(8),
                              children: [
                                Product_Image(widthS: _widthS, name: '1',),
                                Product_Image(widthS: _widthS,name:  '2',),
                                Product_Image(widthS: _widthS, name: '3',),
                                Product_Image(widthS: _widthS, name: '4',),
                                Product_Image(widthS: _widthS, name: '5',),
                                Product_Image(widthS: _widthS, name: '6',),
                                
                              ],
                              ), 
                                                     ),
                            ),
                          SizedBox(width: 16),
                           
                          Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          
                          Text('Coffee with Croissants', style: TextStyle(fontSize: 20),),
                          
                          SizedBox(height: 8),
                          Text('Croissants',style: TextStyle(fontSize:20, color: Colors.black54),),
                          SizedBox(height: 8),
                          Text('\$99.99',style: TextStyle(fontSize: 20, color: Colors.grey[800]),),
                          SizedBox(height: 32),
                          BuyButton(widthS: _widthS, name: 'Add to cart', colors: Colors.green,),
                          SizedBox(height: 16),
                          BuyButton(widthS: _widthS, name: 'Wishlist', colors: Colors.green,)
                        ],
                                          )
                          ],
                        ),
                      );
                  }
                ),
              ),
            ),
            

            Card(
              child: Container(
                padding: EdgeInsets.all(32),
                width: _widthS,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Product Description', style: GoogleFonts.ibarraRealNova(textStyle: TextStyle(color: Colors.black54, fontSize: _widthS/(_widthS>=768?45 : 20), fontWeight: FontWeight.bold)),),
                  const SizedBox(height: 32,),
                  const Text('Line 1'),
                  const Text('Line 2'),
                  const Text('Line 3')
                ]),
              ),
            ),

            SizedBox(height: 16,),

            Text('Similar Products', style: GoogleFonts.ibarraRealNova(textStyle: TextStyle(color: Colors.black54, fontSize: _widthS/(_widthS>=768?45 : 20), fontWeight: FontWeight.bold)),),

            SizedBox(height: 16,),

            SizedBox(       
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MostConsumedTiles(),
                    MostConsumedTiles(),
                    MostConsumedTiles(),
                    MostConsumedTiles(),
                    MostConsumedTiles()
                  ],
                ),
              ),
              SizedBox(height: 16,),

              // About Us
              Container(
                alignment: Alignment.topCenter ,
                padding: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Colors.grey[600]),
                height: 600,
                width: _widthS,
                child: Text('A B O U T  U S', style: GoogleFonts.abel(textStyle: const TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 40 )),),
              )
          ],
        ),
      ),
    );
  }
}



class Product_Image extends StatelessWidget {
  const Product_Image({
    Key? key,
    required double widthS,
    required this.name,
  }) : _widthS = widthS, super(key: key);

  final double _widthS;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue[300]),
      height: MediaQuery.of(context).size.height/3,
      width: _widthS>768?_widthS/5: _widthS<768 && _widthS > 535 ? _widthS/4: _widthS/3,
       child:  Text(name, style:  TextStyle(color: Colors.white, fontSize: (_widthS>768 ? 30:20 ))),
    );
  }
}
