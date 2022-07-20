import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  Size get preferredSize => Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    double _widthS = MediaQuery.of(context).size.width ;
    return AppBar(
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
        );
  }
}