import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  State<AddAddress> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddAddress> {
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
                    
                    Text('Add new address', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20))),
                    
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
              
             
          
              // Fields
              SizedBox(
                height: MediaQuery.of(context).size.height*0.7,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                  
                  const SizedBox(height: 10,),

                    // Full name
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Full Name (Required)*',
                        hintText: 'Enter Full Name',
                      ) ,
                    ),

                    const SizedBox(height: 8,),

                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number (Required)*',
                        hintText: 'Enter number',
                        
                      ) ,
                      keyboardType: TextInputType.number,
                      
                    ),
                    const SizedBox(height: 8,),

                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: const [
                          Icon(Icons.add, color: Colors.blue),
                          Text('Add another phone number', style: TextStyle(color: Colors.blue),),
                        ],
                      )

                    ),

                    const SizedBox(height: 8,),

                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                          Container(
                            width: MediaQuery.of(context).size.width*0.5,
                            child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Pin Code (Required)*',
                            hintText: 'Enter Code',    
                        ) ,
                        keyboardType: TextInputType.number,
                        
                      ),
                          ),

                        SizedBox(width: 8),

                        InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.4,
                            height: 60, 
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange[400],
                            ),
                            
                            child: Row(
                              children: [
                                SizedBox(width: 5),
                                Icon(Icons.gps_fixed, color: Colors.white,),
                                SizedBox(width: 5,),
                                Text('Use my location', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                        

                        ]
                      ),
                    ),

                    const SizedBox(height: 8,),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.4,
                            child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'State (Required)*',
                            hintText: 'Enter State',    
                        ) ,
                        
                        
                      ),
                          ),

                        const SizedBox(width: 8),
                        
                        SizedBox(
                            width: MediaQuery.of(context).size.width*0.53,
                            child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'City (Required)*',
                            hintText: 'Enter City',    
                            suffixIcon: Icon(Icons.search)
                        ) ,
                        
                        
                      ),
                          ),
                        
                        

                        ]
                      ),
                    
                    const SizedBox(height: 8,),

                    const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: ' House No., Building Name (Required)*',
                            hintText: 'Enter Here',    
                        ) ,
                        
                      ),

                    const SizedBox(height: 8,),

                    const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: ' Road name, Area, Colony (Required)*',
                            hintText: 'Enter Here',    
                        ) ,
                        
                      ),
                    const SizedBox(height: 8,),

                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: const [
                          Icon(Icons.add, color: Colors.blue),
                          Text('Add Nearby Famous Shop/Mall/Landmark ', style: TextStyle(color: Colors.blue),),
                        ],
                      )

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
                
                child: Text('Save Address', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),),
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

