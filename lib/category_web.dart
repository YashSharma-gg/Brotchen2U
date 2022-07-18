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
      appBar: AppBar(
          toolbarHeight: 70,
          elevation: 4,
          iconTheme: const IconThemeData(color: Colors.grey),
            backgroundColor: Colors.white,
            title: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _widthS >=812 ? const SizedBox(width: 1,): const SizedBox(),
                    
                    Text('B R O T C H E N 2 U',
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 18))),
                   
                _widthS>=530 ? Container(
                  alignment: Alignment.center,
                height: 50,
                width: _widthS * 0.5,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    
                    hintText: 'Search "Bread"',
                    hintStyle: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.bold)),
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.black54,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: _widthS/80//_widthS>768 ? _widthS / 80 : _widthS/40,
                    ),
                  ),
                ),
              ): const InkWell(
                child: Icon(Icons.search),
              ),
                    
                    _widthS>=840 ? Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {print(_widthS);},
                                icon: const Icon(
                                  Icons.person_outline,
                                  color: Colors.grey,
                                )),
                            const Text('Profile',style: TextStyle(color: Colors.grey, fontSize: 10),)
                          ],
                        ),
                        const SizedBox(width: 13,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_outline,
                                  color: Colors.grey,
                                )),
                            const Text('Favourites',style: TextStyle(color: Colors.grey, fontSize: 10),)
                          ],
                        ),
                        const SizedBox(width: 13,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.shopping_cart,
                                  color: Colors.grey,
                                )),
                            const Text('My Cart',style: TextStyle(color: Colors.grey, fontSize: 10),)
                          ],
                          
                        ),
                        
                      ],
                    ): const SizedBox(),
                    _widthS >=830 ? const SizedBox(width: 10,) : SizedBox() ,
                  ],
                ),
              ),
        ),


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
                 if(_widthS>=768){
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Category 1',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 2',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 3',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 4',),
                    ],
                  ),
                      const SizedBox(height: 40,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Category 5',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 6',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 7',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 8',),
                    ],
                  ),
                  const SizedBox(height: 40,),

                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Category 9',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 10',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 11',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 12',),
                    ],
                  ),

                const SizedBox(height: 60,),

                 Container(
                alignment: Alignment.topCenter ,
                padding: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Colors.grey[600]),
                height: 600,
                width: _widthS,
                child: Text('A B O U T  U S', style: GoogleFonts.abel(textStyle: TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 40 )),),
              )
                  ]);
                 }else if(_widthS<768 && _widthS>530){
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Category 1',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 2',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 3',),
                          
                    ],
                  ),
                      const SizedBox(height: 40,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Category 4',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 5',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 6',),
                     
                    ],
                  ),
                  const SizedBox(height: 40,),

                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Category 7',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 8',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 9',),
                    
                    ],
                  ),
                  const SizedBox(height: 40,),

                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Category 10',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 11',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 12',),
                    
                    ],
                  ),

                const SizedBox(height: 60,),

                 Container(
                alignment: Alignment.topCenter ,
                padding: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Colors.grey[600]),
                height: 600,
                width: _widthS,
                child: Text('A B O U T  U S', style: GoogleFonts.abel(textStyle: TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 40 )),),
              )
                  ]);
              
                 }else{
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Category 1',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 2',),
                          
                          
                    ],
                  ),
                      const SizedBox(height: 40,),

                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Category 3',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 4',),
                          
                          
                    ],
                  ),
                  const SizedBox(height: 40,),

                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Category 5',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 6',),
                          
                          
                    ],
                  ),
                  const SizedBox(height: 40,),

                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Category 7',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 8',),
                          
                          
                    ],
                  ),
                  const SizedBox(height: 40,),

                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Category 9',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 10',),
                          
                          
                    ],
                  ),
                  const SizedBox(height: 40,),

                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Category 11',),
                          CategoryBuilder(widthS: _widthS, name: 'Category 12',),
                          
                          
                    ],
                  ),
                const SizedBox(height: 60,),

                 Container(
                alignment: Alignment.topCenter ,
                padding: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Colors.grey[600]),
                height: 600,
                width: _widthS,
                child: Text('A B O U T  U S', style: GoogleFonts.abel(textStyle: TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 40 )),),
              )
                  ]);
                 }
                 
                }
              )


            ]  
          ),
        ) ,
    );
  }
}

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({
    Key? key,
    required double widthS,
    required this.name,
    this.route = '',
  }) : _widthS = widthS, super(key: key);

  final double _widthS;
  final String name;
  final String route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){print(_widthS);},
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue[300]),
            height: MediaQuery.of(context).size.height/3,
            width: _widthS>768?_widthS/5: _widthS<768 && _widthS > 535 ? _widthS/4: _widthS/3,
            child: Text(name, style:  TextStyle(color: Colors.white, fontSize: (_widthS>768 ? 30:20 ))),
          ),
          
          const SizedBox(height: 20,),
          Text(name)
        ],
      ),
    );
  }
}