import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final double _widthS = MediaQuery.of(context).size.width;
    return  Container(
                alignment: Alignment.topCenter ,
                padding: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Colors.grey[600]),
                height: 600,
                width: _widthS,
                child: Text('A B O U T  U S', style: GoogleFonts.abel(textStyle: const TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 40 )),),
              );
  }
}