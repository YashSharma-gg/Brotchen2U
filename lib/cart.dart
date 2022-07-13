import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            
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
                    
                    Text('My Cart', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20))),
                    
                    const Padding(
                      padding:  EdgeInsets.only(right : 10),
                      child: InkWell(
                        child: Icon(Icons.favorite_outline)
                      ),
                    ),
                  ],
                ),
              ),
              
              
              Container(
                color: Colors.grey[300],
                width: MediaQuery.of(context).size.width,
                height: 1,
              ),
              
              // Index Widget
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('━━━━━⊙Cart', style: TextStyle(color: Colors.green),),
                    Text('━━━━━⊙Address', ),
                    Text('━━━━━⊙Payment', ),
                    
                  ],
                ),
              ),
              
              
        
              
        
              // Items
              SizedBox(
                height: MediaQuery.of(context).size.height*0.65,
                child: SingleChildScrollView(
                  child: Column(
                  children: [
                  const SizedBox(height: 2,),
                  Dismissible(
                    key: Key('1'),
                    background: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        children: [
                          Image.network('https://img.icons8.com/pastel-glyph/128/FA5252/trash.png', isAntiAlias: true, scale: 3 ,),
                          const Spacer(),
                          Image.network('https://img.icons8.com/pastel-glyph/128/FA5252/trash.png', isAntiAlias: true, scale: 3 ,),
                        ],
                      ),
                    ),
                    
                    child: Card(
                      elevation: 2,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: (){},
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(color: Colors.orange[300], borderRadius: BorderRadius.circular(10)),
                                        child: const Icon(Icons.remove,color: Colors.white,size: 15,),
                                      ),
                                    ),
                                    const Padding(
                                      padding:  EdgeInsets.all(8.0),
                                      child: Text('1'),
                                    ),
                                    InkWell(
                                      onTap: (){},
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(color: Colors.orange[300], borderRadius: BorderRadius.circular(10)),
                                        child: const Icon(Icons.add, color: Colors.white,size: 15,),
                                      ),
                                    ),
                                    
                                    
                                  ],
                                )
                        ],
                      ),
                    ),
                  ),
                  
                  
                  Dismissible(
                    key: Key('2'),
                    background: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        children: [
                          Image.network('https://img.icons8.com/pastel-glyph/128/FA5252/trash.png', isAntiAlias: true, scale: 3 ,),
                          const Spacer(),
                          Image.network('https://img.icons8.com/pastel-glyph/128/FA5252/trash.png', isAntiAlias: true, scale: 3 ,),
                        ],
                      ),
                    ),
                    
                    child: Card(
                      elevation: 2,
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
                                  
                                  Text('Better Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16))),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4.0, bottom: 8),
                                    child: Text('Toast and Jam', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 12))),
                                  ),
                                  Text('\$499', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),
                    
                                  
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: (){},
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(color: Colors.orange[300], borderRadius: BorderRadius.circular(10)),
                                        child: const Icon(Icons.remove,color: Colors.white,size: 15,),
                                      ),
                                    ),
                                    const Padding(
                                      padding:  EdgeInsets.all(8.0),
                                      child: Text('1'),
                                    ),
                                    InkWell(
                                      onTap: (){},
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(color: Colors.orange[300], borderRadius: BorderRadius.circular(10)),
                                        child: const Icon(Icons.add, color: Colors.white,size: 15,),
                                      ),
                                    ),
                                    
                                    
                                  ],
                                )
                        ],
                      ),
                    ),
                  ),
                  
                  
                  Dismissible(
                    key: Key('3'),
                    background: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        children: [
                          Image.network('https://img.icons8.com/pastel-glyph/128/FA5252/trash.png', isAntiAlias: true, scale: 3 ,),
                          const Spacer(),
                          Image.network('https://img.icons8.com/pastel-glyph/128/FA5252/trash.png', isAntiAlias: true, scale: 3 ,),
                        ],
                      ),
                    ),
                    
                    child: Card(
                      elevation: 2,
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
                                  
                                  Text('Good Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16))),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4.0, bottom: 8),
                                    child: Text('Toast and Jam', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 12))),
                                  ),
                                  Text('\$499', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),
                    
                                  
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: (){},
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(color: Colors.orange[300], borderRadius: BorderRadius.circular(10)),
                                        child: const Icon(Icons.remove,color: Colors.white,size: 15,),
                                      ),
                                    ),
                                    const Padding(
                                      padding:  EdgeInsets.all(8.0),
                                      child: Text('1'),
                                    ),
                                    InkWell(
                                      onTap: (){},
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(color: Colors.orange[300], borderRadius: BorderRadius.circular(10)),
                                        child: const Icon(Icons.add, color: Colors.white,size: 15,),
                                      ),
                                    ),
                                    
                                    
                                  ],
                                )
                        ],
                      ),
                    ),
                  ),
              
                  Dismissible(
                    key: Key('4'),
                    background: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        children: [
                          Image.network('https://img.icons8.com/pastel-glyph/128/FA5252/trash.png', isAntiAlias: true, scale: 3 ,),
                          const Spacer(),
                          Image.network('https://img.icons8.com/pastel-glyph/128/FA5252/trash.png', isAntiAlias: true, scale: 3 ,),
                        ],
                      ),
                    ),
                    
                    child: Card(
                      elevation: 2,
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
                                  
                                  Text('Great Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16))),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4.0, bottom: 8),
                                    child: Text('Toast and Jam', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 12))),
                                  ),
                                  Text('\$499', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),
                    
                                  
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: (){},
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(color: Colors.orange[300], borderRadius: BorderRadius.circular(10)),
                                        child: const Icon(Icons.remove,color: Colors.white,size: 15,),
                                      ),
                                    ),
                                    const Padding(
                                      padding:  EdgeInsets.all(8.0),
                                      child: Text('1'),
                                    ),
                                    InkWell(
                                      onTap: (){},
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(color: Colors.orange[300], borderRadius: BorderRadius.circular(10)),
                                        child: const Icon(Icons.add, color: Colors.white,size: 15,),
                                      ),
                                    ),
                                    
                                    
                                  ],
                                )
                        ],
                      ),
                    ),
                  ),
                
                  const SizedBox(height: 20,),
                  
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
                              child: Text('Cart Total', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 13))),
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
          
            
              
          
            SizedBox(height: 20),
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
                child: Text('Proceed', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),), 
          
              ),
          
            ),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network('https://cdn-icons-png.flaticon.com/512/5619/5619383.png', scale: 12,),
                    Text('Genuine Products')
                  ],
                ),
                SizedBox(height: 50,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network('https://cdn-icons-png.flaticon.com/512/1161/1161388.png', scale: 12,),
                    Text('Secure Payments')
                  ],
                ),        
              ],
            ),
            SizedBox(height: 10,)
              
            ],
          ),
        ),
      ),
    );
  }
}

