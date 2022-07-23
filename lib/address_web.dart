import 'package:brotchen2u/about_us.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button.dart';
import 'custom_app_bar.dart';

class AddressPageWeb extends StatefulWidget {
  const AddressPageWeb({Key? key}) : super(key: key);

  @override
  State<AddressPageWeb> createState() => _AddressPageWebState();
}

class _AddressPageWebState extends State<AddressPageWeb> {
  @override
  Widget build(BuildContext context) {
    ScrollController _controller = ScrollController();
    final double _widthS = MediaQuery.of(context).size.width;
    final double _heightS = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const Drawer(),
      drawerScrimColor: Colors.grey,

      body: SingleChildScrollView(
        controller: _controller,
        padding: const EdgeInsets.only(top: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  _controller.animateTo(_heightS>600 ? _heightS*1.3 :_heightS<600 &&_heightS>400 ? _heightS*1.9 : _heightS*2.8, duration: Duration(milliseconds: 500), curve: Curves.ease);
                  
                },
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.center,
                    width: _widthS*0.35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_downward_outlined),
                        SizedBox(width: 8),
                        Text('Add new address',  style: GoogleFonts.lato(textStyle: TextStyle(fontSize: _widthS>=1280?30:_widthS>=872 && _widthS<1280 ?20 : 15, fontWeight: FontWeight.bold),color: Colors.grey[700]),),
                      ],
                    )
                  ),
                ),
              ),

              // Choose Address
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: SizedBox(
                  width: _widthS*0.6,
                  
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16,),
                      Center(
                        child: Text('Choose your Address',  style: GoogleFonts.ibarraRealNova(textStyle: TextStyle(fontSize: _widthS>=1280?30:_widthS>=872 && _widthS<1280 ?20 : 15, fontWeight: FontWeight.bold),color: Colors.grey[700]),)
                        ),
                      SizedBox(height: 32,),
                      AddressTile(widthS: _widthS, address_name: 'Address 1', phone_no: 9685056890,),
                      AddressTile(widthS: _widthS, address_name: 'Address 2', phone_no: 9685056890,),
                      AddressTile(widthS: _widthS, address_name: 'Address 3', phone_no: 9685056890,),
                      AddressTile(widthS: _widthS, address_name: 'Address 4', phone_no: 9685056890,),
                      SizedBox(height: 32,),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 64,),
             
              Center(child: Text('OR',  style: TextStyle(fontSize: _widthS>=1280?30:_widthS>=872 && _widthS<1280 ?20 : 15, fontWeight: FontWeight.bold))),
              SizedBox(height: 64,),

              // Add New Adderess
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: SizedBox(
                  width: _widthS*0.6,
                  height: 700,
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16,),
                      Center(child: Text('Add New Address',  style: GoogleFonts.ibarraRealNova(textStyle: TextStyle(fontSize: _widthS>=1280?30:_widthS>=872 && _widthS<1280 ?20 : 15, fontWeight: FontWeight.bold)),)),
                      SizedBox(height: 16,),
                      SizedBox(
                
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
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
                            width: MediaQuery.of(context).size.width*0.4 ,
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
                  
                        _widthS>=706 ? Expanded(
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 150,
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
                                  Expanded(child: Text('Use my location', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))
                                ],
                              ),
                            ),
                          ),
                        ): SizedBox(),
                        
                  
                        ]
                      ),
                    ),
                  
                    const SizedBox(height: 8,),
                  
                    _widthS<=705 ? InkWell(
                            onTap: (){print(_widthS);},
                            child: Container(
                              width: 150,
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
                                  Expanded(child: Text('Use my location', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))
                                ],
                              ),
                            ),
                          ): SizedBox(),
                        
                       _widthS<706 ? const SizedBox(height: 8,) : SizedBox(),
                        
                  
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.3,
                            child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'State (Required)*',
                            hintText: 'Enter State',    
                        ) ,
                        
                        
                      ),
                          ),
                  
                        const SizedBox(width: 8),
                        
                        const Expanded(
                          child: SizedBox(
                              
                              child:TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'City (Required)*',
                              hintText: 'Enter City',    
                              suffixIcon: Icon(Icons.search)
                          ) ,
                          
                          
                                              ),
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
                        children:  [
                          Icon(Icons.add, color: Colors.blue),
                          Text('Add Nearby Famous Shop/Mall/Landmark ', style: TextStyle(color: Colors.blue, fontSize: _widthS >550? 15 : 13),),
                        ],
                      )
                                    
                    ),
                  
                  
                  ]
                                 ),
                  ),
                ),
              ),
                    SizedBox(height: 16,),
                    Center(child: BuyButton(width: _widthS, name: 'Save Address',height: 64, ))
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 64,),
              const AboutUs()
            ],
          ),
        )
        ),
    );
  }
}





class AddressTile extends StatelessWidget {
  const AddressTile({
    Key? key,
    required double widthS,
    required this.address_name,
    required this.phone_no,
  }) : _widthS = widthS, super(key: key);

  final double _widthS;
  final String address_name;
  final int phone_no;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){},
        child: Container(
         width: _widthS*0.6,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(16)),
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(address_name, style: TextStyle(color: Colors.grey[600], fontSize: 20),),
                    SizedBox(height: 16,),
                    Text('Address Line 1', style: TextStyle(color: Colors.grey[400]),),
                    Text('Address Line 2', style: TextStyle(color: Colors.grey[400]),),
                    Text('Address Line 3', style: TextStyle(color: Colors.grey[400]),),
                    Text('Address Line 4', style: TextStyle(color: Colors.grey[400]),),
                    SizedBox(height: 16,),
                    Text('Phone no. : ${phone_no}', style: TextStyle(color: Colors.grey[500]),)
                  ],
                ),
              ),
              
               InkWell(
                 onTap: (){},
                 child : Container(
                   width: 25,
                   height: 25,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                   child: Image.network('https://cdn-icons-png.flaticon.com/512/512/512222.png', fit: BoxFit.contain,),
                 )
                 // child: Image.network('https://cdn-icons-png.flaticon.com/512/512/512222.png', scale: 30,),
               )
            ],
          ),
        ),
      ),
    );
  }
}