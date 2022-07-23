import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostConsumedTiles extends StatelessWidget {
  const MostConsumedTiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      
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
                                  
                  
                  
                  const InkWell(
                  child:  Icon(Icons.favorite_outline_rounded,),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




// Product Tiles
class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({
    Key? key,
    required double widthS,
    required this.name,
    required this.title,
    this.route = '',

  }) : _widthS = widthS, super(key: key);

  final double _widthS;
  final String name;
  final bool title;
  final String route;

  @override
  Widget build(BuildContext context) {
    double _heightS = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: (){},
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue[300]),
            height: MediaQuery.of(context).size.height/3,
            width: _widthS>768?_widthS/5: _widthS<768 && _widthS > 535 ? _widthS/4: _widthS/3,
            child:  Text(name, style:  TextStyle(color: Colors.white, fontSize: (_widthS>768 ? 30:20 ))),
          ),
          
          _heightS>=540 ? const SizedBox(height: 20,): SizedBox(),
          title==true? (_widthS>=540 ?Text(name) : Text('')) : SizedBox()
        ],
      ),
    );
  }
}

// CART PRODUCTS
class CartProducts extends StatelessWidget {
  const CartProducts(
      {Key? key, required this.name, required this.price, required this.color, this.count})
      : super(key: key);

  final String name;
  final int price;
  final Color color;
  final int ?count;
  @override
  Widget build(BuildContext context) {
    final double _widthS = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black12), borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(10)),
                child: Text(name, style: TextStyle(color: Colors.white)),
              ),
            ),
            
            SizedBox(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),), Text('\$$price')],
              ),
            ),
            count==null ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.orange[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ) ,
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('1'),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.orange[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 32),
                Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: InkWell(
                onTap: (){},
                
                child: Icon(Icons.remove_circle_outline, color: Colors.grey[600],),
              ),
            )
              ],
            ): Padding(
              padding: const EdgeInsets.only(right: 16.0, left: 8  , top: 4),
              child: SizedBox(
                height:150 ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Item count: $count' , style: TextStyle(fontWeight: FontWeight.bold),),
                    
                    Text('Price: ${price*( count ?? 1)}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green[400]),)
                  ],
                ),
              ),
            )
            
            
          ],
        ),
      ),
    );
  }
}


// PRICE DETAILS
class PriceDetails extends StatelessWidget {
  const PriceDetails({
    Key? key,
    required this.name,
    required this.price,
  }) : super(key: key);
  final String name;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name, style: TextStyle(color: Colors.grey[600], fontSize: 20,)),
            Text(price, style: TextStyle(color: Colors.grey[500], fontSize: 20, )),
          ],
        ),
        const SizedBox(height: 16,),
      ],
    );
  }
}