import 'package:brotchen2u/custom_app_bar.dart';
import 'package:brotchen2u/product_cards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CategoryPageWeb extends StatefulWidget {
  const CategoryPageWeb({Key? key}) : super(key: key);

  @override
  State<CategoryPageWeb> createState() => _CategoryPageWebState();
}

class _CategoryPageWebState extends State<CategoryPageWeb> {
  @override
  Widget build(BuildContext context) {

    List<int> isActive = [
    0,
    0,
    0,
    0
  ];

    double _widthS = MediaQuery.of(context).size.width;
    
    return Scaffold(

      appBar: CustomAppBar(),
      drawer: const Drawer(),
      drawerScrimColor: Colors.grey,

      body : SingleChildScrollView(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
              const SizedBox(height: 20,),
              Center(child: Text('Category Name', style: GoogleFonts.ibarraRealNova(textStyle: TextStyle(color: Colors.black54, fontSize: _widthS/25)))),
              const SizedBox(height: 60,),
              Text('Showing 12 Results', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black54, fontSize: _widthS/40))),
              const SizedBox(height: 20,),
              
              // Filters
              Padding(
                padding: const EdgeInsets.only (left: 16.0, right: 16),
                child: Row(
                  
                  children: [
                    
                    Text('Filters', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black54, fontSize: _widthS/(_widthS>=768?55 : 50)))),
                      
                    const Spacer(),

                    // The Buttons
                    Container(
                     padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(45)
                      ),
                      child: Row(
                        children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(45)
                      ),
                            child: InkWell(
                      onTap: (){},
                      child: Text('Lowest', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black54, fontSize: _widthS/(_widthS>=768?60 : 50))))
                      ),
                          ),
                    const SizedBox(width: 8,),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(45)
                      ),
                      child: InkWell(
                        onTap: (){},
                        child: Text('Highest', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black54, fontSize: _widthS/(_widthS>=768?60 : 50))))
                        ),
                    ),
                    const SizedBox(width: 8,),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(45)
                      ),
                      child: InkWell(
                        onTap: (){},
                        child: Text('Newest', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black54, fontSize: _widthS/(_widthS>=768?60 : 50))))
                        ),
                    ),
                    const SizedBox(width: 8,),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(45)
                      ),
                      child: InkWell(
                        onTap: (){},
                        child: Text('Popular', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black54, fontSize: _widthS/(_widthS>=768?60 : 50))))
                        ),
                    ),
                        ],
                      ),
                    )  
                  ],
                ),
              ),

              const SizedBox(height: 60,),
              
              // Products
              LayoutBuilder(
                
                builder: (context, constraints) {
                  return SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: GridView(
                        
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _widthS>= 768 ? 4 : (_widthS>=535 && _widthS<768) ? 3 : 2 , mainAxisExtent: MediaQuery.of(context).size.height/(MediaQuery.of(context).size.height >= 240 ? 2.5 : 1.8)),
                        padding: const EdgeInsets.all(8),
                        children: [
                          CategoryBuilder(widthS: _widthS, name: 'Product 1',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Product 2',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Product 3',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Product 4',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Product 5',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Product 6',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Product 7',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Product 8',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Product 9',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Product 10',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Product 11',title: true,),
                          CategoryBuilder(widthS: _widthS, name: 'Product 12',title: true,),
                        ],
                        ),
                    );
                }
              ),

              const SizedBox(height: 60,),

              // About Us
              Container(
                alignment: Alignment.topCenter ,
                padding: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Colors.grey[600]),
                height: 600,
                width: _widthS,
                child: Text('A B O U T  U S', style: GoogleFonts.abel(textStyle: const TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 40 )),),
              )

          ],
        ),
        )

    );
  }
}