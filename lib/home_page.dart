import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
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
                width: 600,
                height: 300,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    double widthS = MediaQuery.of(context).size.width;

    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: const Duration(milliseconds: 300),
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          // Navigation Bar
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.orange[500],
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline), label: 'Favourites'),
            ],
          ),
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                
                // Spacing
                const SizedBox(
                  height: 10,
                ),
                
                // AppBar
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      isDrawerOpen
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  xOffset = 0;
                                  yOffset = 0;
                                  scaleFactor = 1;
                                  isDrawerOpen = false;
                                });
                              },
                              icon: const Icon(Icons.arrow_back))
                          : IconButton(
                              onPressed: () {
                                setState(() {
                                  xOffset = 250;
                                  yOffset = 150;
                                  scaleFactor = 0.6;
                                  isDrawerOpen = true;
                                });
                              },
                              icon: const Icon(
                                Icons.menu,
                                color: Colors.grey,
                                size: 30,
                              )),
                      Text('Location',
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18))),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart,
                            color: Colors.grey,
                          ))
                    ],
                  ),
                ),
                
                // Spacing
                const SizedBox(
                  height: 20,
                ),
               
                // Search Bar
                Container(
                  height: 50,
                  width: widthS * 0.95,
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
                            aspectRatio: 12 / 7,
                            onPageChanged: (index, other) {
                              setState(() {
                                _current = index;
                              });
                            })),
                    AspectRatio(
                        aspectRatio: 12 / 7,
                        child: Center(
                            child: Text(
                          names[_current],
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 20,
                                  fontWeight: FontWeight.bold)),
                        )))
                  ],
                ),
                
                // Spacing
                const SizedBox(
                  height: 20,
                ),
                
                // Categories
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Categories',
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
                
                // Categories Names
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 14,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: (){
                            
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Row(
                              children : [
                                const Icon(Icons.star),
                                const SizedBox(width: 8,),
                                Text('Category 1', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.orange[400])),)
                              ]
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: (){},
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Row(
                              children : [
                                const Icon(Icons.star),
                                const SizedBox(width: 8,),
                                Text('Category 2', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.orange[400])),)
                              ]
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: (){},
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Row(
                              children : [
                                const Icon(Icons.star),
                                const SizedBox(width: 8,),
                                Text('Category 3', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.orange[400])),)
                              ]
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: (){},
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Row(
                              children : [
                                const Icon(Icons.star),
                                const SizedBox(width: 8,),
                                Text('Category 4', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.orange[400])),)
                              ]
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: (){},
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Row(
                              children : [
                                const Icon(Icons.star),
                                const SizedBox(width: 8,),
                                Text('Category 5', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.orange[400])),)
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
                  height: 20,
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
                  height: MediaQuery.of(context).size.height / 3.5,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Card(
                        elevation: 8,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      topRight: Radius.circular(3)),
                                ),
                                width: MediaQuery.of(context).size.width / 2.3,
                                height:
                                    0.75 * MediaQuery.of(context).size.height / 4,
                                child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/3/33/Fresh_made_bread_05.jpg',
                                  fit: BoxFit.cover,
                                  isAntiAlias: true,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width / 2.2,
                              height:
                                  0.25 * MediaQuery.of(context).size.height / 4,
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
      
                                  // Alternate Like button using IconButton. It is a bit slower
                                  // isLiked
                                  //      IconButton(
                                  //         onPressed: () {
                                  //           setState(() {
                                  //             isLiked = false;
                                  //           });
                                  //         },
                                  //         icon: const Icon(
                                  //           Icons.favorite_rounded,
                                  //           color: Colors.red,
                                  //         ))
                                  //     : IconButton(
                                  //         onPressed: () {
                                  //           isLiked = true;
                                  //         },
                                  //         icon: const Icon(
                                  //             Icons.favorite_outline_rounded)),
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
                          ],
                        ),
                      ),
                      Card(
                        elevation: 8,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      topRight: Radius.circular(3)),
                                ),
                                width: MediaQuery.of(context).size.width / 2.3,
                                height:
                                    0.75 * MediaQuery.of(context).size.height / 4,
                                child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/3/33/Fresh_made_bread_05.jpg',
                                  fit: BoxFit.cover,
                                  isAntiAlias: true,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width / 2.3,
                              height:
                                  0.25 * MediaQuery.of(context).size.height / 4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  // const SizedBox(width: 5,),
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
                                   (isLiked[1]==0? false : true) ? InkWell(onTap: (){
                                    setState(() {
                                      isLiked[1] = 0;
                                    });
                                  },
                                  child: const Icon(Icons.favorite_rounded,color: Colors.red,),):
                                  InkWell(onTap: (){
                                    setState(() {
                                      isLiked[1] = 1;
                                    });
                                  },
                                  child: const Icon(Icons.favorite_outline_rounded,),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 8,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      topRight: Radius.circular(3)),
                                ),
                                width: MediaQuery.of(context).size.width / 2.3,
                                height:
                                    0.75 * MediaQuery.of(context).size.height / 4,
                                child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/3/33/Fresh_made_bread_05.jpg',
                                  fit: BoxFit.cover,
                                  isAntiAlias: true,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width / 2.3,
                              height:
                                  0.25 * MediaQuery.of(context).size.height / 4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  // const SizedBox(width: 5,),
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
                                   (isLiked[2]==0? false : true) ? InkWell(onTap: (){
                                    setState(() {
                                      isLiked[2] = 0;
                                    });
                                  },
                                  child: const Icon(Icons.favorite_rounded,color: Colors.red,),):
                                  InkWell(onTap: (){
                                    setState(() {
                                      isLiked[2] = 1;
                                    });
                                  },
                                  child: const Icon(Icons.favorite_outline_rounded,),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),    
                      Card(
                        elevation: 8,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      topRight: Radius.circular(3)),
                                ),
                                width: MediaQuery.of(context).size.width / 2.3,
                                height:
                                    0.75 * MediaQuery.of(context).size.height / 4,
                                child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/3/33/Fresh_made_bread_05.jpg',
                                  fit: BoxFit.cover,
                                  isAntiAlias: true,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width / 2.3,
                              height:
                                  0.25 * MediaQuery.of(context).size.height / 4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  // const SizedBox(width: 5,),
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
                                   (isLiked[3]==0? false : true) ? InkWell(onTap: (){
                                    setState(() {
                                      isLiked[3] = 0;
                                    });
                                  },
                                  child: const Icon(Icons.favorite_rounded,color: Colors.red,),):
                                  InkWell(onTap: (){
                                    setState(() {
                                      isLiked[3] = 1;
                                    });
                                  },
                                  child: const Icon(Icons.favorite_outline_rounded,),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
