import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _AddressPageState();
}

class _AddressPageState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        
        backgroundColor: Colors.grey[200],
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
                    
                    const SizedBox(width: 15,),
                    
                    Text('Order History', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20))),
                    
                    const Padding(
                      padding:  EdgeInsets.only(right : 10),
                      child: InkWell(
                        child: Text('Clear history', style: TextStyle(color: Colors.grey,),)
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
              
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                children: [
                  InkWell(
                    onTap: (){},
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: MediaQuery.of(context).size.height/5,
                        
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          
                          children: [
                            const SizedBox(width: 10,),
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-n6RhhIpiYEEYSW2jBR7_VcPtnKgng9GvTw&usqp=CAU'), fit: BoxFit.cover) ,borderRadius: BorderRadius.circular(10), ),
                              
                            ),
                            const SizedBox(width: 10,),
                            SizedBox(
                              height: 120,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Delivered on : June 12, 2022', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 13))),

                                  SizedBox(height: 10,),
                                  
                                  Text('Items : 10', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 15))),
                                  
                                  SizedBox(height: 5,),
                                  
                                  // Order date and Dellivery date
                                  SizedBox(height: 10,),
                                  Text('Total Price : \$499', style: TextStyle(fontWeight: FontWeight.bold),)
                                  
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10,),
                 InkWell(
                    onTap: (){},
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: MediaQuery.of(context).size.height/5,
                        
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          
                          children: [
                            const SizedBox(width: 10,),
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-n6RhhIpiYEEYSW2jBR7_VcPtnKgng9GvTw&usqp=CAU'), fit: BoxFit.cover) ,borderRadius: BorderRadius.circular(10), ),
                              
                            ),
                            const SizedBox(width: 10,),
                            SizedBox(
                              height: 120,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Delivered on : June 12, 2022', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 13))),

                                  SizedBox(height: 10,),
                                  
                                  Text('Items : 10', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 15))),
                                  
                                  SizedBox(height: 5,),
                                  
                                  // Order date and Dellivery date
                                  SizedBox(height: 10,),
                                  Text('Total Price : \$499', style: TextStyle(fontWeight: FontWeight.bold),)
                                  
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 10,),
InkWell(
                    onTap: (){},
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: MediaQuery.of(context).size.height/5,
                        
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          
                          children: [
                            const SizedBox(width: 10,),
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-n6RhhIpiYEEYSW2jBR7_VcPtnKgng9GvTw&usqp=CAU'), fit: BoxFit.cover) ,borderRadius: BorderRadius.circular(10), ),
                              
                            ),
                            const SizedBox(width: 10,),
                            SizedBox(
                              height: 120,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Delivered on : June 12, 2022', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 13))),

                                  SizedBox(height: 10,),
                                  
                                  Text('Items : 10', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 15))),
                                  
                                  SizedBox(height: 5,),
                                  
                                  // Order date and Dellivery date
                                  SizedBox(height: 10,),
                                  Text('Total Price : \$499', style: TextStyle(fontWeight: FontWeight.bold),)
                                  
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  
                  InkWell(
                    onTap: (){},
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: MediaQuery.of(context).size.height/5,
                        
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          
                          children: [
                            const SizedBox(width: 10,),
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-n6RhhIpiYEEYSW2jBR7_VcPtnKgng9GvTw&usqp=CAU'), fit: BoxFit.cover) ,borderRadius: BorderRadius.circular(10), ),
                              
                            ),
                            const SizedBox(width: 10,),
                            SizedBox(
                              height: 120,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Delivered on : June 12, 2022', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 13))),

                                  SizedBox(height: 10,),
                                  
                                  Text('Items : 10', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 15))),
                                  
                                  SizedBox(height: 5,),
                                  
                                  // Order date and Dellivery date
                                  SizedBox(height: 10,),
                                  Text('Total Price : \$499', style: TextStyle(fontWeight: FontWeight.bold),)
                                  
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
               ),
             ),
            
              
          
            const SizedBox(height: 20),
            // Total Price
            
              
            ],
          ),
        ),
      ),
    );
  }
}

