import 'package:flutter/material.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key? key,
    required double widthS,
    required this.name,
    this.height,
    this.colors
  }) : _widthS = widthS, super(key: key);

  final double _widthS;
  final String name;
  final Color ?colors ;
  final double ?height;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        alignment: Alignment.center,
        height: height ?? 80,
        width: _widthS>=1280?300 :_widthS>=872 && _widthS<1280 ?200 : 150,
        decoration: BoxDecoration(
          color: colors ?? Colors.orange,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name,style: const TextStyle( color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
