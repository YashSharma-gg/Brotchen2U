import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
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

  List<Widget> generateTiles() {
    return images
        .map((element) => ClipRRect(
              clipBehavior: Clip.antiAlias,
              child: Image.network(
                element,
                fit: BoxFit.cover,
                width: 400,
                height: 700,
              ),
            ))
        .toList();
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: _current,
        count: images.length,
        effect: WormEffect(
          activeDotColor: Colors.orange.shade400,
          radius: 8,
          dotWidth: 8,
          dotHeight: 8,
        ),
      );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(height: 20),

          // Appbar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: const Icon(Icons.arrow_back_rounded),
              ),
              const SizedBox(width: 20),
              Text('Product Name',
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 20))),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black38,
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),

          // Carousel
          CarouselSlider(
              items: generateTiles(),
              options: CarouselOptions(
                  aspectRatio: 0.9,
                  viewportFraction: 1,
                  onPageChanged: (index, other) {
                    setState(() {
                      _current = index;
                    });
                  })),
          const SizedBox(height: 10),

          // Index or Page Dots
          buildIndicator(),

          // Spacing
          const SizedBox(
            height: 8,
          ),

          // Product Details
          SizedBox(
            height: 90,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Good Bread',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 20,
                                fontWeight: FontWeight.bold))),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('Toast and Jam',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                        ))),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('\$499',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                        ))),
                  ],
                ),
                const SizedBox(
                  width: 200,
                ),
                InkWell(
                    child: Icon(
                  Icons.favorite_border,
                )),
              ],
            ),
          ),

          // Add to cart Button
          Card(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.amber,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Text(
                  'ADD TO CART',
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),

          // Spacing
          const SizedBox(
            height: 10,
          ),

          // Grey spacing
          Container(
            color: Colors.grey[200],
            height: 10,
            width: double.infinity,
          ),

          // Spacing
          const SizedBox(
            height: 10,
          ),

          // Product Description Title
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              SizedBox(
                child: Text(
                  'Product Description',
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ),
              ),
            ],
          ),

          //Spacing
          const SizedBox(
            height: 10,
          ),

          // Product Description Text
          Container(
            alignment: Alignment.topLeft,
            width: MediaQuery.of(context).size.width * 0.95,
            child: Text(
                """Find and Compare Content Writing Services Usa Online. Save Now at SlyToday! Find Content Writing Services Usa at SlyToday, the Website to Compare Prices! Many Products. Compare Products. Search and Discover. Quick Results. Find Easily. Easy Acces."""),
          ),

          // Spacing
          const SizedBox(
            height: 15,
          ),

          // Grey Spacing
          Container(
            color: Colors.grey[200],
            height: 10,
            width: double.infinity,
          ),

          // Spacing
          const SizedBox(
            height: 15,
          ),

          // Similar Product Title
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              SizedBox(
                child: Text(
                  'Similar Breads',
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),

          // Similar Products Cards
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3.5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // Similar Products Cards
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
                          height: 0.75 * MediaQuery.of(context).size.height / 4,
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
                        height: 0.25 * MediaQuery.of(context).size.height / 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            InkWell(
                              onTap: () {},
                              child: Icon(Icons.favorite_border),
                            )

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
                          height: 0.75 * MediaQuery.of(context).size.height / 4,
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
                        height: 0.25 * MediaQuery.of(context).size.height / 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // const SizedBox(width: 5,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            InkWell(
                              onTap: () {},
                              child: Icon(Icons.favorite_border),
                            )
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
                          height: 0.75 * MediaQuery.of(context).size.height / 4,
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
                        height: 0.25 * MediaQuery.of(context).size.height / 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // const SizedBox(width: 5,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            InkWell(
                              onTap: () {},
                              child: Icon(Icons.favorite_border),
                            )
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
                          height: 0.75 * MediaQuery.of(context).size.height / 4,
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
                        height: 0.25 * MediaQuery.of(context).size.height / 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // const SizedBox(width: 5,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            InkWell(
                              onTap: () {},
                              child: Icon(Icons.favorite_border),
                            )
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
      )),
    ));
  }
}
