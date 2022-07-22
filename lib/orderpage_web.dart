import 'package:brotchen2u/about_us.dart';
import 'package:brotchen2u/button.dart';
import 'package:brotchen2u/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPageWeb extends StatefulWidget {
  const OrderPageWeb({Key? key}) : super(key: key);

  @override
  State<OrderPageWeb> createState() => _OrderPageWebState();
}

class _OrderPageWebState extends State<OrderPageWeb> {
  @override
  Widget build(BuildContext context) {
    final double _widthS = MediaQuery.of(context).size.width;
    final double _heightS = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const Drawer(),
      drawerScrimColor: Colors.grey,
      body: SingleChildScrollView(
          
          child: Column(
            children: [
              
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return _widthS>= 905 ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 40,),
                        
                        // Products
                        Expanded(
                          child: Card(
                            elevation: 4,
                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,
                            child: Container(
                              width: _widthS*0.6,
                              height: 600,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                  const SizedBox(height: 24,),
                                  Text('My Cart', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black54, fontSize: 25, fontWeight: FontWeight.bold)),),
                                   const SizedBox(height: 24,),
                                  const CartProducts(
                                    name: 'Product 1',
                                    price: '\$99',
                                    color: Colors.amber,
                                  ),
                                  const CartProducts(name: 'Product 2', price: '\$59', color: Colors.amber)
                                 
                                ]),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 32,
                        ),
                        
                        // Price Details
                        Card(
                          elevation: 4,
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,
                          child: Container(
                            width: _widthS * 0.32,
                            
                            padding: EdgeInsets.all(24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Price Details', style: TextStyle(color: Colors.grey[600], fontSize: 25, fontWeight: FontWeight.bold)),
                                SizedBox(height: 8,),
                                Center(child: Text('------------------------------------------------------------------------------', style: TextStyle(color: Colors.grey[300], fontSize: _widthS/80, fontWeight: FontWeight.bold))),
                                SizedBox(height: 16,),
                                PriceDetails(name: 'Cart Total', price: '\$299',),
                                PriceDetails(name: 'Shipping Charges', price: '\$5'),
                                PriceDetails(name: 'Delivery Charges', price: '\$2'),
                                Center(child: Text('------------------------------------------------------------------------------', style: TextStyle(color: Colors.grey[300], fontSize: _widthS/80, fontWeight: FontWeight.bold))),
                                
                                SizedBox(height: 16,),
                                PriceDetails(name: 'Total Price', price: '\$306'),  
                                SizedBox(height: 16,),
                                Center(child: BuyButton(widthS: _widthS, name: 'Continue', colors: Colors.orange,height: 60,))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 40,),
                
                      
                      ],
                
                    ) : Column(
                      children: [
                        Card(
                          elevation: 4,
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,
                          child: Container(
                            width: _widthS*0.9,
                            height: 600,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                const SizedBox(height: 24,),
                                Text('My Cart', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black54, fontSize: 25, fontWeight: FontWeight.bold)),),
                                 const SizedBox(height: 24,),
                                const CartProducts(
                                  name: 'Product 1',
                                  price: '\$99',
                                  color: Colors.amber,
                                ),
                                const CartProducts(name: 'Product 2', price: '\$59', color: Colors.amber)
                               
                              ]),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 32,
                        ),

                        Card(
                          elevation: 4,
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,
                          child: Container(
                            width: _widthS * 0.9,
                            
                            padding: EdgeInsets.all(24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Price Details', style: TextStyle(color: Colors.grey[600], fontSize: 25, fontWeight: FontWeight.bold)),
                                SizedBox(height: 8,),
                                Center(child: Text('------------------------------------------------------------------------------', style: TextStyle(color: Colors.grey[300], fontSize: _widthS/80, fontWeight: FontWeight.bold))),
                                SizedBox(height: 16,),
                                PriceDetails(name: 'Cart Total', price: '\$299',),
                                PriceDetails(name: 'Shipping Charges', price: '\$5'),
                                PriceDetails(name: 'Delivery Charges', price: '\$2'),
                                Center(child: Text('------------------------------------------------------------------------------', style: TextStyle(color: Colors.grey[300], fontSize: _widthS/80, fontWeight: FontWeight.bold))),
                                
                                SizedBox(height: 16,),
                                PriceDetails(name: 'Total Price', price: '\$306'),
                                SizedBox(height: 16,),
                                Center(child: BuyButton(widthS: _widthS, name: 'Continue', colors: Colors.orange,height: 60,))
                      
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 40,),
                      ],
                    );
                  
                  
                  }
                ),
              ),
              const SizedBox(height: 80,),
              const AboutUs(),
            ],
          )),
    );
  }
}




// PRICE DETAILS
class PriceDetails extends StatelessWidget {
  const PriceDetails({
    Key? key,
    required this.name,
    required this.price,
  }) : super(key: key);
  final String name;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name, style: TextStyle(color: Colors.grey[600], fontSize: 20,)),
            Text(price, style: TextStyle(color: Colors.grey[500], fontSize: 20, )),
          ],
        ),
        const SizedBox(height: 16,),
      ],
    );
  }
}






// CART PRODUCTS
class CartProducts extends StatelessWidget {
  const CartProducts(
      {Key? key, required this.name, required this.price, required this.color})
      : super(key: key);

  final String name;
  final String price;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black12), borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(10)),
                child: Text(name, style: TextStyle(color: Colors.white)),
              ),
            ),
            Column(
              children: [Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),SizedBox(height: 16,), Text(price)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.orange[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('1'),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.orange[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 32),
                Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: InkWell(
                onTap: (){},
                
                child: Icon(Icons.remove_circle_outline, color: Colors.grey[600],),
              ),
            )
              ],
            ),
            
            
          ],
        ),
      ),
    );
  }
}
