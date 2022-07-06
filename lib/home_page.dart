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

  List<Widget> generateTiles(){
    return images.map((element) => ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(15),
      
      child: Image.network(element,
      fit: BoxFit.cover,
      width: 600 ,
      height: 300 ,
      
      ),
    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    double widthS = MediaQuery.of(context).size.width;

    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: const Duration(milliseconds: 300),
      color: Colors.white,
      child: Scaffold(
        // Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          
          selectedItemColor: Colors.orange[500],
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'  ),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: 'Favourites'  ),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'WishList'  ),
          ],
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 35,
              ),
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
              const SizedBox(
                height: 20,
              ),
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
                            color: Colors.black38, fontWeight: FontWeight.bold)),
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.black54,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height/50,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              Stack(
                children: [
                  CarouselSlider(items: generateTiles(), 
                    options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 12/7,
                    onPageChanged: (index, other){
                        setState(() {
                          _current = index;
                        });
                    }
                    )),
                  AspectRatio(aspectRatio: 12/7,
                  child: Center(child: Text(names[_current], style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width/20,
                  fontWeight: FontWeight.bold)),))
                  )
                ],
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(alignment: Alignment.centerLeft,child: Text('Categories', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontSize: 20,) ),)),
              ),
              const SizedBox(height: 10,),
              // Categories
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/14,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      color: Colors.amber,
                      elevation: 5,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        
                      ),
                    ),
                    Card(
                      color: Colors.red,
                      elevation: 5,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      elevation: 5,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        
                      ),
                    ),
                    Card(
                      color: Colors.grey,
                      elevation: 5,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        
                      ),
                    ),
                    Card(
                      color: Colors.orange,
                      elevation: 5,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(alignment: Alignment.centerLeft,child: Text('Most Consumed', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontSize: 20,) ),)),
                ),
              const SizedBox(height: 10,),
              // Most Consumed
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/4,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      color: Colors.amber,
                      elevation: 5,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.2,
                        
                      ),
                    ),
                    Card(
                      color: Colors.red,
                      elevation: 5,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.2,
                        
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      elevation: 5,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.2,
                        
                      ),
                    ),
                    Card(
                      color: Colors.grey,
                      elevation: 5,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.2,
                        
                      ),
                    ),
                    Card(
                      color: Colors.orange,
                      elevation: 5,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.2,
                      ),
                    ),
                  ],
                ),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
