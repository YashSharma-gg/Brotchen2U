import 'package:flutter/material.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key? key,
    
    required this.name,
    this.height,
    this.color,
    this.icons,
    this.width,
    this.colorText,
    this.onTap,
    
  }) :  super(key: key);

  final double ?width;
  final String name;
  final Color ?color ;
  final double ?height;
  final Icon ?icons;
  final Color ?colorText;
  final GestureTapCallback ?onTap;
  @override
  Widget build(BuildContext context) {
    final double _widthS = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height ?? 80,
        width: width ?? (_widthS>=1280?300 :_widthS>=872 && _widthS<1280 ?200 : 150),
        decoration: BoxDecoration(
          color: color ?? Colors.orange,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icons ?? SizedBox(),
            Text(name,style: const TextStyle( color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
