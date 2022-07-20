
import 'package:flutter/material.dart';

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
      onTap: (){print(MediaQuery.of(context).size.height);},
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