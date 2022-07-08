import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MaterialApp(home: CategoryPage(),));
}

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
    List<int> isFav = [
    0,
    0,
    0,
    0,
    0,
    0
  ];
  
  @override
  Widget build(BuildContext context) {
  
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children:  [
                const SizedBox(height: 20,),
               
                // App Bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: const Icon(Icons.arrow_back_ios_new),
                      onTap: (){},
                      ),
                    const SizedBox(width: 50,),
                    Text('Category 1', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[800], fontSize: 20, fontWeight: FontWeight.bold)), ),
                    const SizedBox(width: 50,),
                     InkWell(
                      child: const Icon(Icons.shopping_cart),
                      onTap: (){},
                      ),
                  ],
                ),
      
                // Spacing
                SizedBox(height: 30,),
               
                // Row 1
                Row(
                  children: [
                   Card(
                    elevation: 8,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.amber),
                            width: MediaQuery.of(context).size.width/2.3,
                            height: 0.75*MediaQuery.of(context).size.height/3,
                            child: Image.network('https://i.ytimg.com/vi/c9Wg6Cb_YlU/hq720.jpg?sqp=-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLB6zDJvSAX2b69Ju-mGlGbzVbFrMg', fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/2.1,
                          height: 0.25*MediaQuery.of(context).size.height/3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 17)),), 
                                  Text('Toast and Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 13)),),
                                  Text('80,000',style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 13)),)
                                  ],
                              ),
                              SizedBox(width: 10,),
                              (isFav[0]==0?false:true) ? InkWell(
                                onTap: (){
                                  setState(() {
                                    isFav[0]= 0;
                                  });
                                },
                                child: Icon(Icons.favorite_rounded, color: Colors.red,),
                              ): 
                              InkWell(
                               onTap: (){
                                setState(() {
                                  isFav[0] = 1;
                                });
                               }, 
                               child: Icon(Icons.favorite_border_rounded),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                   ),
                   Card(
                    elevation: 8,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.amber),
                            width: MediaQuery.of(context).size.width/2.3,
                            height: 0.75*MediaQuery.of(context).size.height/3,
                            child: Image.network('https://i.ytimg.com/vi/c9Wg6Cb_YlU/hq720.jpg?sqp=-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLB6zDJvSAX2b69Ju-mGlGbzVbFrMg', fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/2.1,
                          height: 0.25*MediaQuery.of(context).size.height/3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 17)),), 
                                  Text('Toast and Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 13)),),
                                  Text('80,000',style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 13)),)
                                  ],
                              ),
                              SizedBox(width: 10,),
                              (isFav[1]==0?false:true) ? InkWell(
                                onTap: (){
                                  setState(() {
                                    isFav[1]= 0;
                                  });
                                },
                                child: Icon(Icons.favorite_rounded, color: Colors.red,),
                              ): 
                              InkWell(
                               onTap: (){
                                setState(() {
                                  isFav[1] = 1;
                                });
                               }, 
                               child: Icon(Icons.favorite_border_rounded),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                   ),
                  ],
                ),
                
                // Row 2
                Row(
                  children: [
                   Card(
                    elevation: 8,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.amber),
                            width: MediaQuery.of(context).size.width/2.3,
                            height: 0.75*MediaQuery.of(context).size.height/3,
                            child: Image.network('https://i.ytimg.com/vi/c9Wg6Cb_YlU/hq720.jpg?sqp=-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLB6zDJvSAX2b69Ju-mGlGbzVbFrMg', fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/2.1,
                          height: 0.25*MediaQuery.of(context).size.height/3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 17)),), 
                                  Text('Toast and Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 13)),),
                                  Text('80,000',style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 13)),)
                                  ],
                              ),
                              SizedBox(width: 10,),
                              (isFav[2]==0?false:true) ? InkWell(
                                onTap: (){
                                  setState(() {
                                    isFav[2]= 0;
                                  });
                                },
                                child: Icon(Icons.favorite_rounded, color: Colors.red,),
                              ): 
                              InkWell(
                               onTap: (){
                                setState(() {
                                  isFav[2] = 1;
                                });
                               }, 
                               child: Icon(Icons.favorite_border_rounded),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                   ),
                   Card(
                    elevation: 8,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.amber),
                            width: MediaQuery.of(context).size.width/2.3,
                            height: 0.75*MediaQuery.of(context).size.height/3,
                            child: Image.network('https://i.ytimg.com/vi/c9Wg6Cb_YlU/hq720.jpg?sqp=-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLB6zDJvSAX2b69Ju-mGlGbzVbFrMg', fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/2.1,
                          height: 0.25*MediaQuery.of(context).size.height/3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 17)),), 
                                  Text('Toast and Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 13)),),
                                  Text('80,000',style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 13)),)
                                  ],
                              ),
                              SizedBox(width: 10,),
                              (isFav[3]==0?false:true) ? InkWell(
                                onTap: (){
                                  setState(() {
                                    isFav[3]= 0;
                                  });
                                },
                                child: Icon(Icons.favorite_rounded, color: Colors.red,),
                              ): 
                              InkWell(
                               onTap: (){
                                setState(() {
                                  isFav[3] = 1;
                                });
                               }, 
                               child: Icon(Icons.favorite_border_rounded),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                   ),
                  ],
                ),
                
                // Row 3
                Row(
                  children: [
                   Card(
                    elevation: 8,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.amber),
                            width: MediaQuery.of(context).size.width/2.3,
                            height: 0.75*MediaQuery.of(context).size.height/3,
                            child: Image.network('https://i.ytimg.com/vi/c9Wg6Cb_YlU/hq720.jpg?sqp=-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLB6zDJvSAX2b69Ju-mGlGbzVbFrMg', fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/2.1,
                          height: 0.25*MediaQuery.of(context).size.height/3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 17)),), 
                                  Text('Toast and Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 13)),),
                                  Text('80,000',style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 13)),)
                                  ],
                              ),
                              SizedBox(width: 10,),
                              (isFav[4]==0?false:true) ? InkWell(
                                onTap: (){
                                  setState(() {
                                    isFav[4]= 0;
                                  });
                                },
                                child: Icon(Icons.favorite_rounded, color: Colors.red,),
                              ): 
                              InkWell(
                               onTap: (){
                                setState(() {
                                  isFav[4] = 1;
                                });
                               }, 
                               child: Icon(Icons.favorite_border_rounded),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                   ),
                   Card(
                    elevation: 8,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.amber),
                            width: MediaQuery.of(context).size.width/2.3,
                            height: 0.75*MediaQuery.of(context).size.height/3,
                            child: Image.network('https://i.ytimg.com/vi/c9Wg6Cb_YlU/hq720.jpg?sqp=-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLB6zDJvSAX2b69Ju-mGlGbzVbFrMg', fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/2.1,
                          height: 0.25*MediaQuery.of(context).size.height/3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 17)),), 
                                  Text('Toast and Bread', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 13)),),
                                  Text('80,000',style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 13)),)
                                  ],
                              ),
                              SizedBox(width: 10,),
                              (isFav[5]==0?false:true) ? InkWell(
                                onTap: (){
                                  setState(() {
                                    isFav[5]= 0;
                                  });
                                },
                                child: Icon(Icons.favorite_rounded, color: Colors.red,),
                              ): 
                              InkWell(
                               onTap: (){
                                setState(() {
                                  isFav[5] = 1;
                                });
                               }, 
                               child: Icon(Icons.favorite_border_rounded),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                   ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  }
}