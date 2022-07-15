import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
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
                    
                    Text('Select Address', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20))),
                    
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
                    Text('━━━━━⊙Address', style: TextStyle(color: Colors.green),),
                    Text('━━━━━⊙Payment', ),
                    
                  ],
                ),
              ),
              
              
        
              
        
              // Items
              SizedBox(
                height: MediaQuery.of(context).size.height*0.7,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const SizedBox(height: 10,),

                  // Add new Address
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: const[
                            SizedBox(width: 5,),
                            Icon(Icons.add),
                            SizedBox(width: 30,),
                            Text('Add new address')
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 20,),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Saved Addresses', style: TextStyle(color: Colors.grey[700], fontSize: 10),),
                  ),
                  
                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                    child: InkWell(
                      onTap: (){
                        
                      },
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Address 1', style: TextStyle(fontWeight: FontWeight.bold, fontSize:15 ),),
                                  const SizedBox(height:5),
                                  Text('Address line 1', style: TextStyle(color:Colors.grey[900],fontSize:12 ),),
                                  Text('Address line 2', style: TextStyle(color:Colors.grey[900],fontSize:12 ),),
                                  Text('Address line 3', style: TextStyle(color:Colors.grey[900],fontSize:12 ),),
                                  const SizedBox(height:5),
                                  Text('Phone no.', style: TextStyle(color:Colors.black,fontSize:14 ),),
                                ],
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                              child: Image.network('https://cdn-icons-png.flaticon.com/512/512/512222.png', scale: 30,),
                            ),
                          )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                    child: InkWell(
                      onTap: (){
                        
                      },
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Address 2', style: TextStyle(fontWeight: FontWeight.bold, fontSize:15 ),),
                                  const SizedBox(height:5),
                                  Text('Address line 1', style: TextStyle(color:Colors.grey[900],fontSize:12 ),),
                                  Text('Address line 2', style: TextStyle(color:Colors.grey[900],fontSize:12 ),),
                                  Text('Address line 3', style: TextStyle(color:Colors.grey[900],fontSize:12 ),),
                                  const SizedBox(height:5),
                                  Text('Phone no.', style: TextStyle(color:Colors.black,fontSize:14 ),),
                                ],
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                              child: Image.network('https://cdn-icons-png.flaticon.com/512/512/512222.png', scale: 30,),
                            ),
                          )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                    child: InkWell(
                      onTap: (){
                        
                      },
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Address 3', style: TextStyle(fontWeight: FontWeight.bold, fontSize:15 ),),
                                  const SizedBox(height:5),
                                  Text('Address line 1', style: TextStyle(color:Colors.grey[900],fontSize:12 ),),
                                  Text('Address line 2', style: TextStyle(color:Colors.grey[900],fontSize:12 ),),
                                  Text('Address line 3', style: TextStyle(color:Colors.grey[900],fontSize:12 ),),
                                  const SizedBox(height:5),
                                  Text('Phone no.', style: TextStyle(color:Colors.black,fontSize:14 ),),
                                ],
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                              child: Image.network('https://cdn-icons-png.flaticon.com/512/512/512222.png', scale: 30,),
                            ),
                          )
                          ],
                        ),
                      ),
                    ),
                  ),
                            ]
                          ),
                ),
              ),

              
            
              
          
            SizedBox(height: 20),
            // Total Price
            InkWell(
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)
                ) ,
                
                child: Text('Continue', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),),
              ),
            ),
            SizedBox(height: 10,)
              
            ],
          ),
        ),
      ),
    );
  }
}

