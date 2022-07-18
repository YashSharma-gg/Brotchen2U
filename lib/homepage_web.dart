

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // double xOffset = 0;
  // double yOffset = 0;
  // double scaleFactor = 1;
  // bool isDrawerOpen = false;
  int _current = 0;
  
  List<int> isLiked = [
    0,
    0,
    0,
    0
  ];

  final List<String> images = [
    'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/B10F0941-3518-440D-A69F-72EFF5F7826B/Derivates/D5691ACE-1B10-42D8-8364-11402524A36D.jpg',
    'https://merryboosters.com/wp-content/uploads/2020/04/Untitled-design-44.png',
    'https://saltandbaker.com/wp-content/uploads/2020/09/Easy-Focaccia-Bread-square.jpg',
    'https://static.toiimg.com/thumb/76626392.cms?width=1200&height=900',
    'https://media.istockphoto.com/photos/yummy-freshly-croissant-sliced-almonds-with-chocolate-filling-cut-up-picture-id1269391551?k=20&m=1269391551&s=612x612&w=0&h=oVCnbPYPcVbhIC-q7cJEqPwnJsB6iZAv1KbBd6SdmIY=',
    'https://www.culinaryhill.com/wp-content/uploads/2021/03/Croissant-French-Toast-Culinary-Hill-1200x800-1.jpg',
    'https://www.kitchensanctuary.com/wp-content/uploads/2017/04/Almond-Croissants-with-Strawberries-and-Nutella-square-FS.jpg',
  ];
  final List<String> names = [
    'Baguette',
    'Ciabatta Bread',
    'Focaccia Bread',
    'Multigrain Bread',
    'Chocolate Croissant',
    'Croissant French Toast',
    'Nutella And Strawberry Croissant',
  ];

  List<Widget> generateTiles() {
    return images
        .map((element) => ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                element,
                fit: BoxFit.cover,
                width: 800,
                height: 300,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    double widthS = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
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
                    widthS >=812 ? const SizedBox(width: 1,): const SizedBox(),
                    
                    Text('B R O T C H E N 2 U',
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 18))),
                   
                widthS>=530 ? Container(
                height: 50,
                width: widthS * 0.5,
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
                      vertical: MediaQuery.of(context).size.height / 50,
                    ),
                  ),
                ),
              ): const InkWell(
                child: Icon(Icons.search),
              ),
                    
                    widthS>=840 ? Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {print(widthS);},
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
                    widthS >=830 ? const SizedBox(width: 10,) : SizedBox() ,
                  ],
                ),
              ),
        ),
        drawer: const Drawer(),
        drawerScrimColor: Colors.grey,
        // Navigation Bar
        
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            
            children: <Widget>[
              
              // Spacing
              const SizedBox(
                height: 20,
              ),
    
             
              SizedBox(
                
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: (){
                          
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 10,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children : [
                              const Icon(Icons.star),
                              
                              widthS>=911 ? Padding(
                                padding: const EdgeInsets.only(left: 10 ),
                                child: Expanded(child: Text('Category 1', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.orange[400])),)),
                              ): SizedBox()
                            ]
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: (){
                          
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 10,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children : [
                              const Icon(Icons.star),
                              
                              widthS>=911 ? Padding(
                                padding: const EdgeInsets.only(left: 10 ),
                                child: Expanded(child: Text('Category 1', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.orange[400])),)),
                              ): SizedBox()
                            ]
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: (){
                          
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 10,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children : [
                              const Icon(Icons.star),
                              
                              widthS>=911 ? Padding(
                                padding: const EdgeInsets.only(left: 10 ),
                                child: Expanded(child: Text('Category 1', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.orange[400])),)),
                              ): SizedBox()
                            ]
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: (){
                          
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 10,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children : [
                              const Icon(Icons.star),
                              
                              widthS>=911 ? Padding(
                                padding: const EdgeInsets.only(left: 10 ),
                                child: Expanded(child: Text('Category 1', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.orange[400])),)),
                              ): SizedBox()
                            ]
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: (){
                          
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 10,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children : [
                              const Icon(Icons.star),
                              
                              widthS>=911 ? Padding(
                                padding: const EdgeInsets.only(left: 10 ),
                                child: Expanded(child: Text('Category 1', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.orange[400])),)),
                              ): SizedBox()
                            ]
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              // Spacing
              const SizedBox(
                height: 30,
              ),
              
              // Carousel
              Stack(
                children: [
                  CarouselSlider(
                      items: generateTiles(),
                      options: CarouselOptions(
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 3,
                          onPageChanged: (index, other) {
                            setState(() {
                              _current = index;
                            });
                          })),
                  AspectRatio(
                      aspectRatio:3 ,
                      child: Center(
                          child: Text(
                        names[_current],
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold)),
                      )))
                ],
              ),
              
              // Spacing
              const SizedBox(
                height: 50,
              ),
              
              // Most Consumed title
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Most Consumed',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 20,
                      )),
                    )),
              ),
             
              // Spacing
              const SizedBox(
                height: 10,
              ),
             
              // Most Consumed products
              SizedBox(       
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Expanded(
                      child: Card(
                        
                        elevation: 8,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        topRight: Radius.circular(3)),
                                  ),
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      200,
                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/commons/3/33/Fresh_made_bread_05.jpg',
                                    fit: BoxFit.cover,
                                    isAntiAlias: true,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width / 4,
                                height:
                                   200,
                                child: Row(
                                  
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Bread',
                                            style: GoogleFonts.lato(
                                                textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15))),
                                        Text('Toast and Jam',
                                            style: GoogleFonts.lato(
                                                textStyle: TextStyle(
                                                    color: Colors.grey[600],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10))),
                                        Text('499 only',
                                            style: GoogleFonts.lato(
                                                textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10))),
                                      ],
                                    ),
                                                    
                                    
                                    (isLiked[0]==0? false : true) ? InkWell(onTap: (){
                                      setState(() {
                                        isLiked[0] = 0;
                                      });
                                    },
                                    child: const Icon(Icons.favorite_rounded,color: Colors.red,),):
                                    InkWell(onTap: (){
                                      setState(() {
                                        isLiked[0] = 1;
                                      });
                                    },
                                    child: const Icon(Icons.favorite_outline_rounded,),)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 8,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        topRight: Radius.circular(3)),
                                  ),
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      200,
                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/commons/3/33/Fresh_made_bread_05.jpg',
                                    fit: BoxFit.cover,
                                    isAntiAlias: true,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width / 4,
                                height:
                                   200,
                                child: Row(
                                  
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Bread',
                                            style: GoogleFonts.lato(
                                                textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15))),
                                        Text('Toast and Jam',
                                            style: GoogleFonts.lato(
                                                textStyle: TextStyle(
                                                    color: Colors.grey[600],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10))),
                                        Text('499 only',
                                            style: GoogleFonts.lato(
                                                textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10))),
                                      ],
                                    ),
                                                    
                                    
                                    (isLiked[0]==0? false : true) ? InkWell(onTap: (){
                                      setState(() {
                                        isLiked[0] = 0;
                                      });
                                    },
                                    child: const Icon(Icons.favorite_rounded,color: Colors.red,),):
                                    InkWell(onTap: (){
                                      setState(() {
                                        isLiked[0] = 1;
                                      });
                                    },
                                    child: const Icon(Icons.favorite_outline_rounded,),)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 8,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        topRight: Radius.circular(3)),
                                  ),
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      200,
                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/commons/3/33/Fresh_made_bread_05.jpg',
                                    fit: BoxFit.cover,
                                    isAntiAlias: true,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width / 4,
                                height:
                                   200,
                                child: Row(
                                  
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Bread',
                                            style: GoogleFonts.lato(
                                                textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15))),
                                        Text('Toast and Jam',
                                            style: GoogleFonts.lato(
                                                textStyle: TextStyle(
                                                    color: Colors.grey[600],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10))),
                                        Text('499 only',
                                            style: GoogleFonts.lato(
                                                textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10))),
                                      ],
                                    ),
                                                    
                                    
                                    (isLiked[0]==0? false : true) ? InkWell(onTap: (){
                                      setState(() {
                                        isLiked[0] = 0;
                                      });
                                    },
                                    child: const Icon(Icons.favorite_rounded,color: Colors.red,),):
                                    InkWell(onTap: (){
                                      setState(() {
                                        isLiked[0] = 1;
                                      });
                                    },
                                    child: const Icon(Icons.favorite_outline_rounded,),)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 8,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        topRight: Radius.circular(3)),
                                  ),
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      200,
                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/commons/3/33/Fresh_made_bread_05.jpg',
                                    fit: BoxFit.cover,
                                    isAntiAlias: true,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width / 4,
                                height:
                                   200,
                                child: Row(
                                  
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Bread',
                                            style: GoogleFonts.lato(
                                                textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15))),
                                        Text('Toast and Jam',
                                            style: GoogleFonts.lato(
                                                textStyle: TextStyle(
                                                    color: Colors.grey[600],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10))),
                                        Text('499 only',
                                            style: GoogleFonts.lato(
                                                textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10))),
                                      ],
                                    ),
                                                    
                                    
                                    (isLiked[0]==0? false : true) ? InkWell(onTap: (){
                                      setState(() {
                                        isLiked[0] = 0;
                                      });
                                    },
                                    child: const Icon(Icons.favorite_rounded,color: Colors.red,),):
                                    InkWell(onTap: (){
                                      setState(() {
                                        isLiked[0] = 1;
                                      });
                                    },
                                    child: const Icon(Icons.favorite_outline_rounded,),)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 60,),


              // About Us
              Container(
                alignment: Alignment.topCenter ,
                padding: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Colors.grey[600]),
                height: 600,
                width: widthS,
                child: Text('A B O U T  U S', style: GoogleFonts.abel(textStyle: TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 40 )),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
