import 'package:brotchen2u/about_us.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_app_bar.dart';

class OrderHistoryWeb extends StatefulWidget {
  const OrderHistoryWeb({Key? key}) : super(key: key);

  @override
  State<OrderHistoryWeb> createState() => _OrderHistoryWebState();
}

class _OrderHistoryWebState extends State<OrderHistoryWeb> {
  @override
  Widget build(BuildContext context) {
    final double _heightS = MediaQuery.of(context).size.height;
    final double _widthS = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: Drawer(),
      drawerScrimColor: Colors.grey, 

      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 60),
        child: Column(
        children: [
          Center(child: Text('ORDER HISTORY', style:GoogleFonts.ibarraRealNova(textStyle: TextStyle(color: Colors.grey, fontSize: 40)))),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Filter', style:GoogleFonts.ibarraRealNova(textStyle: TextStyle(color: Colors.grey, fontSize: 30))),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical:5, horizontal: 5),
                        decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(15)),
                        child: Text('Low to High', style:GoogleFonts.ibarraRealNova(textStyle: TextStyle(color: Colors.grey, fontSize: 20))), 
                        ),
                    ),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical:5, horizontal: 5),
                        decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(15)),
                        child: Text('High to Low', style:GoogleFonts.ibarraRealNova(textStyle: TextStyle(color: Colors.grey, fontSize: 20))), 
                        ),
                    ),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical:5, horizontal: 10),
                        decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(15)),
                        child: Text('Latest', style:GoogleFonts.ibarraRealNova(textStyle: TextStyle(color: Colors.grey, fontSize: 20))), 
                        ),
                    ),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical:5, horizontal: 10),
                        decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(15)),
                        child: Text('Oldest', style:GoogleFonts.ibarraRealNova(textStyle: TextStyle(color: Colors.grey, fontSize: 20))), 
                        ),
                    ),
                  ],
                )
              ],
            ),
          ),

          SizedBox(height: 32,),

          LayoutBuilder(builder: (context,constraints){
            return SizedBox(
              width: _widthS*0.8,
              height: _heightS*0.7,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _widthS>=910 ? 2 : 1, childAspectRatio: 3.5 ,mainAxisSpacing: 16, crossAxisSpacing: 16),
                 itemBuilder: (context, index){
                  return OrderHistoryTiles(onTap: (){},); 
                 },
                 itemCount: 8,
                )
            //   child: GridView(
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _widthS>=910 ? 2 : 1, childAspectRatio: 3.5 ,mainAxisSpacing: 16, crossAxisSpacing: 16) ,
                
            //     children: [
            //       OrderHistoryTiles(onTap: (){},),
            //       OrderHistoryTiles(onTap: (){},),
            //       OrderHistoryTiles(onTap: (){},),
            //       OrderHistoryTiles(onTap: (){},),
            //       OrderHistoryTiles(onTap: (){},),
            //     ],
            //   ),
            );

          }),

          SizedBox(height: 100,),
          AboutUs(),
        ],),
      ),
    );

  }
}

class OrderHistoryTiles extends StatelessWidget {
  const OrderHistoryTiles({
    Key? key,
    this.onTap
  }) : super(key: key);
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    double _widthS = MediaQuery.of(context).size.width;
    return InkWell(
          onTap: onTap,
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              height: 150,
              width: _widthS*0.4,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                
                children: [
                  const SizedBox(width: 10,),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-n6RhhIpiYEEYSW2jBR7_VcPtnKgng9GvTw&usqp=CAU'), fit: BoxFit.cover) ,borderRadius: BorderRadius.circular(10), ),
                    
                  ),
                  const SizedBox(width: 30,),
                  SizedBox(
                    height: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Delivered on : June 12, 2022', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 13))),

                        SizedBox(height: 10,),
                        
                        Text('Items : 10', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 15))),
                        
                        SizedBox(height: 5,),
                        
                        // Order date and Dellivery date
                        SizedBox(height: 10,),
                        Text('Total Price : \$499', style: TextStyle(fontWeight: FontWeight.bold),)
                        
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
  }
}