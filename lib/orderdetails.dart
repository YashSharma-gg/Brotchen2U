import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _CartPageState();
}

class _CartPageState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        
        backgroundColor: Colors.white,
        body: Column(
          
          children: [
        
            // AppBar
            Container(
              color: Colors.white,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: InkWell(
                      child: Icon(Icons.arrow_back_rounded),
                    ),
                  ),
                  
                  Text('Order Details', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20))),
                  
                  SizedBox(width: 5,)
                ],
              ),
            ),
            
            
            Container(
              color: Colors.grey[300],
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),

            // Items
            SizedBox(
              height: MediaQuery.of(context).size.height*0.71,
              child: SingleChildScrollView(
                child: Column(
                children: [
                const SizedBox(height: 2,),
                Card(
                  elevation: 4,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration( 
                          borderRadius: BorderRadius.circular(8), 
                          image: const DecorationImage(image: NetworkImage('https://i.ytimg.com/vi/c9Wg6Cb_YlU/hq720.jpg?sqp=-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLB6zDJvSAX2b69Ju-mGlGbzVbFrMg',),
                          fit: BoxFit.cover
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              Text('Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16))),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0, bottom: 8),
                                child: Text('Toast and Jam', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 12))),
                              ),
                              Text('\$499', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),
                
                              
                            ],
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
                
                
                Card(
                  elevation: 4,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration( 
                          borderRadius: BorderRadius.circular(8), 
                          image: const DecorationImage(image: NetworkImage('https://i.ytimg.com/vi/c9Wg6Cb_YlU/hq720.jpg?sqp=-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLB6zDJvSAX2b69Ju-mGlGbzVbFrMg',),
                          fit: BoxFit.cover
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              Text('Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16))),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0, bottom: 8),
                                child: Text('Toast and Jam', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 12))),
                              ),
                              Text('\$499', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),
                
                              
                            ],
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
                
                
                Card(
                  elevation: 4,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration( 
                          borderRadius: BorderRadius.circular(8), 
                          image: const DecorationImage(image: NetworkImage('https://i.ytimg.com/vi/c9Wg6Cb_YlU/hq720.jpg?sqp=-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLB6zDJvSAX2b69Ju-mGlGbzVbFrMg',),
                          fit: BoxFit.cover
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              Text('Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16))),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0, bottom: 8),
                                child: Text('Toast and Jam', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 12))),
                              ),
                              Text('\$499', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),
                
                              
                            ],
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
            
               Card(
                  elevation: 4,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration( 
                          borderRadius: BorderRadius.circular(8), 
                          image: const DecorationImage(image: NetworkImage('https://i.ytimg.com/vi/c9Wg6Cb_YlU/hq720.jpg?sqp=-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLB6zDJvSAX2b69Ju-mGlGbzVbFrMg',),
                          fit: BoxFit.cover
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              Text('Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16))),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0, bottom: 8),
                                child: Text('Toast and Jam', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 12))),
                              ),
                              Text('\$499', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),
                
                              
                            ],
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              
                const SizedBox(height: 20,),

                Card(
                elevation: 3,
                child: Container(
                  alignment: Alignment.center,
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text('Addresses', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 17))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left :10.0),
                        child: Text('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━', style: TextStyle(color: Colors.grey[300]),textScaleFactor: 0.8,),
                      ),
                      const SizedBox(height: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Padding(
                            padding:  const EdgeInsets.only(left: 10.0),
                            child: Text('Delivery Address: ', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 13))),
                          ),
                           Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 10),
                            child: Column(
                              
                              children: [
                                Text('Address Line 1', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13))),
                                Text('Address Line 2', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13))),
                                Text('Address Line 3', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13))),
                                Text('Address Line 4', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13))),
                              ],
                            ),
                          )
                        ],
                      ),
                      
                      
                      
                      const SizedBox(height: 20,)
                    ],
                  ),
                ),
                          ), 
                
                // Price Details
                Card(
                elevation: 3,
                child: Container(
                  alignment: Alignment.center,
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text('Price Details', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 17))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left :10.0),
                        child: Text('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━', style: TextStyle(color: Colors.grey[300]),textScaleFactor: 0.8,),
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Padding(
                            padding:  const EdgeInsets.only(left: 10.0),
                            child: Text('Total Price', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 13))),
                          ),
                           Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Text('\$1497', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13))),
                          )
                        ],
                      ),
                      const SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text('Shipping Charges', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 13))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Text('Free', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 13))),
                          ), 
                
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left :10.0),
                        child: Text('-------------------------------------------', style: TextStyle(color: Colors.grey[300]),textScaleFactor: 2,),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text('Total cost', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Text('\$1497', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 13))),
                          ), 
                                         
                        ],
                      ),
                      const SizedBox(height: 20,)
                    ],
                  ),
                ),
                          ), 
                          ]
                        ),
              ),
            ),
        
          
            
        
          const SizedBox(height: 20),
          // Total Price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        
              Padding(
                padding: const EdgeInsets.only(left : 10.0),
                child: Text('Total Amount(Incl. of all taxes)', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text('\$1497', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 15)),),
              )
            ],
          ),
        
          const SizedBox(height: 20,),
          
          // Proceed or Continue button 
          InkWell(
            
            child: Container(
              
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width*0.7,
              height: 40,
              decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(10)),
              child: Text('Repeat Order', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),), 
        
            ),
        
          ),

          SizedBox(height: 20,),
          
          SizedBox(height: 10,)
            
          ],
        ),
      ),
    );
  }
}

