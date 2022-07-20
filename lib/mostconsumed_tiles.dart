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