import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double _widthS = MediaQuery.of(context).size.width;
    double _heightS = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body:Stack(
          children: [
            Column(
              
              children: [

                Stack(
                  children: [
                    SizedBox(

                      width: _widthS,
                      height: _heightS*0.25,
                      
                      child: Container(
                      alignment: Alignment.topCenter,
                      
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                        color: Colors.orange,
                        
                      ),
                      width: _widthS,
                      height: _heightS*0.25,
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Transform.rotate(
                        angle: 25*3.14/180,
                        child: ClipOval(
                          child: Container(
                            
                            width: 40,
                            height: 60,
                            color: Colors.orange[200],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:120, left: 250),
                      child: Transform.rotate(
                        angle: 320*3.14/180,
                        child: ClipOval(
                          child: Container(
                            
                            width: 120,
                            height: 80,
                            color: Colors.orange[200],
                          ),
                        ),
                      ),
                    ),

                    ProfileDetail(name: 'Yash Sharma', email: 'yaaash123@gmail.com',)
                  ]
                ),

                SizedBox(height: 64,),
                

                // List of options
                Card(
                  child: SizedBox(
                    
                    width: _widthS*0.9,
                    child: Column(
                      children: [
                        OptionTiles(icon: Icons.person_outline, title: 'About Us',),
                        OptionTiles(title: 'Follow Us', icon: Icons.favorite_outline),
                        OptionTiles(title: 'Customer Care', icon: Icons.chat_bubble_outline),
                        OptionTiles(title: 'Feedback', icon: Icons.star_border_outlined),
                        OptionTiles(title: 'Terms and Conditions', icon: Icons.book_outlined),
                        OptionTiles(title: 'Log Out', icon: Icons.logout_outlined),
                      ],
                    ),
                  )
                )
              ],
            ),
            

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 20),
              child: Card(
                elevation: 4,
                child: Container(
                  width: 340,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HoveringOptions(name: 'Orders',icon: Icon(Icons.credit_card_outlined)),
                      HoveringOptions(name: 'Address',icon: Icon(Icons.house_outlined)),
                      HoveringOptions(name: 'Shop',icon: Icon(Icons.shopping_bag_outlined)),
                    ],
                  ),
                ),
              ),
            )          
          ],
        )
      ),
    );
  }
}

class OptionTiles extends StatelessWidget {
  const OptionTiles({
    Key? key,
    required this.title,
    required this.icon
  }) : super(key: key);
      final String title;
      final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black54, size: 25,),
      title: Text(title, style: GoogleFonts.lato(textStyle:TextStyle()),),
    );
  }
}

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({
    Key? key,

    required this.name,
    required this.email,
  }) : super(key: key);

 
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
   final double _widthS = MediaQuery.of(context).size.width;
   final double _heightS = MediaQuery.of(context).size.height;
    return Container(
      width: _widthS,
      height: _heightS*0.2,
      child: Row(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          ClipOval(
            child :SizedBox(
              width: 100,
              height: 100,
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROZTgJiqRWL5wWednBz8zyRUhSuEDTzefieg&usqp=CAU', fit: BoxFit.cover),
            )
          ),
          SizedBox(width: 32,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name, style: TextStyle(color: Colors.white),),
              Text(email, style: TextStyle(color: Colors.white),),
            ],
          ),
          Spacer()
        ],
      ),
    );
  }
}

class HoveringOptions extends StatelessWidget {
  const HoveringOptions({
    Key? key,
    required this.name,
    required this.icon,
    this.onTap
  }) : super(key: key);
  final String name;
  final Icon icon;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          icon,
          Text(name)
        ],
      ),
    );
  }
}