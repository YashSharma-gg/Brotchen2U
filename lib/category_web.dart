import 'package:brotchen2u/custom_app_bar.dart';
import 'package:brotchen2u/tiles_and_cards_of_products.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWeb extends StatefulWidget {
  const CategoryWeb({Key? key}) : super(key: key);

  @override
  State<CategoryWeb> createState() => _Category_WebState();
}

class _Category_WebState extends State<CategoryWeb> {
  final List<String> ImageS = [
    'Promo 1',
    'Promo 2',
    'Promo 3',
    'Promo 4',
  ];
 int _current  = 0;  
  
  @override
  Widget build(BuildContext context) {
    double _widthS = MediaQuery.of(context).size.width;


    List<Widget> generateTiles() {
    return ImageS
        .map((element) => ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                alignment: Alignment.center,
                color: Colors.red[300],
                width: _widthS,
                child: Text(element,style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
              )
            ))
        .toList();
  }


    return Scaffold(
      appBar: CustomAppBar(),

        drawer: const Drawer(),
        drawerScrimColor: Colors.grey,
        
        body:SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children : [
              const SizedBox(height: 20,),
              Center(child: Text('PICK YOUR OWN PO...BREAD', style: GoogleFonts.ibarraRealNova(textStyle: TextStyle(color: Colors.black54, fontSize: _widthS/30)))),
              const SizedBox(height: 60,),
              CarouselSlider(
                      items: generateTiles(),
                      options: CarouselOptions(
                          enlargeCenterPage: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 7),
                          height: 500,
                          viewportFraction: 1,
                          onPageChanged: (index, other) {
                            setState(() {
                              _current = index;
                            });
                          })),
              const SizedBox(height: 60,),
              
              LayoutBuilder(
                
                builder: (context, constraints) {
                  return SizedBox(
                      height: MediaQuery.of(context).size.height*0.8,
                      child: GridView(
                        
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _widthS>= 768 ? 4 : (_widthS>=535 && _widthS<768) ? 3 : 2 , mainAxisExtent: MediaQuery.of(context).size.height/(MediaQuery.of(context).size.height >= 240 ? 2.5 : 1.8)),
                        padding: const EdgeInsets.all(8),
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Category 1', title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Category 2',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Category 3',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Category 4',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Category 5',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Category 6',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Category 7',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Category 8',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Category 9',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Category 10',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Category 11',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Category 12',title: true,),
                        ],
                        ),
                    );
                }
              ),

              Container(
                alignment: Alignment.topCenter ,
                padding: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Colors.grey[600]),
                height: 600,
                width: _widthS,
                child: Text('A B O U T  U S', style: GoogleFonts.abel(textStyle: const TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 40 )),),
              )

              // LayoutBuilder(
              //   builder: (context, constraints) {
              //    if(_widthS>=768){
              //     return Column(
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             CategoryBuilder(widthS: _widthS, name: 'Category 1',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 2',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 3',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 4',),
              //       ],
              //     ),
              //         const SizedBox(height: 40,),

              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             CategoryBuilder(widthS: _widthS, name: 'Category 5',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 6',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 7',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 8',),
              //       ],
              //     ),
              //     const SizedBox(height: 40,),

              //     Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             CategoryBuilder(widthS: _widthS, name: 'Category 9',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 10',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 11',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 12',),
              //       ],
              //     ),

              //   const SizedBox(height: 60,),

              //    Container(
              //   alignment: Alignment.topCenter ,
              //   padding: EdgeInsets.only(top: 30),
              //   decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Colors.grey[600]),
              //   height: 600,
              //   width: _widthS,
              //   child: Text('A B O U T  U S', style: GoogleFonts.abel(textStyle: TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 40 )),),
              // )
              //     ]);
              //    }else if(_widthS<768 && _widthS>530){
              //     return Column(
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             CategoryBuilder(widthS: _widthS, name: 'Category 1',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 2',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 3',),
                          
              //       ],
              //     ),
              //         const SizedBox(height: 40,),

              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             CategoryBuilder(widthS: _widthS, name: 'Category 4',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 5',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 6',),
                     
              //       ],
              //     ),
              //     const SizedBox(height: 40,),

              //     Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             CategoryBuilder(widthS: _widthS, name: 'Category 7',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 8',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 9',),
                    
              //       ],
              //     ),
              //     const SizedBox(height: 40,),

              //     Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             CategoryBuilder(widthS: _widthS, name: 'Category 10',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 11',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 12',),
                    
              //       ],
              //     ),

              //   const SizedBox(height: 60,),

              //    Container(
              //   alignment: Alignment.topCenter ,
              //   padding: const EdgeInsets.only(top: 30),
              //   decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Colors.grey[600]),
              //   height: 600,
              //   width: _widthS,
              //   child: Text('A B O U T  U S', style: GoogleFonts.abel(textStyle: TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 40 )),),
              // )
              //     ]);
              
              //    }else{
              //     return Column(
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             CategoryBuilder(widthS: _widthS, name: 'Category 1',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 2',),
                          
                          
              //       ],
              //     ),
              //         const SizedBox(height: 40,),

              //        Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             CategoryBuilder(widthS: _widthS, name: 'Category 3',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 4',),
                          
                          
              //       ],
              //     ),
              //     const SizedBox(height: 40,),

              //     Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             CategoryBuilder(widthS: _widthS, name: 'Category 5',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 6',),
                          
                          
              //       ],
              //     ),
              //     const SizedBox(height: 40,),

              //     Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             CategoryBuilder(widthS: _widthS, name: 'Category 7',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 8',),
                          
                          
              //       ],
              //     ),
              //     const SizedBox(height: 40,),

              //     Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             CategoryBuilder(widthS: _widthS, name: 'Category 9',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 10',),
                          
                          
              //       ],
              //     ),
              //     const SizedBox(height: 40,),

              //     Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             CategoryBuilder(widthS: _widthS, name: 'Category 11',),
              //             CategoryBuilder(widthS: _widthS, name: 'Category 12',),
                          
                          
              //       ],
              //     ),
              //   const SizedBox(height: 60,),

              //    Container(
              //   alignment: Alignment.topCenter ,
              //   padding: const EdgeInsets.only(top: 30),
              //   decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Colors.grey[600]),
              //   height: 600,
              //   width: _widthS,
              //   child: Text('A B O U T  U S', style: GoogleFonts.abel(textStyle: TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 40 )),),
              // )
              //     ]);
              //    }
                 
              //   }
              // )


            ]  
          ),
        ) ,
    );
  }
}

