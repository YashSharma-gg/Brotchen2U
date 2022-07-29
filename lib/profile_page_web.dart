import 'package:brotchen2u/about_us.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_app_bar.dart';

class ProfilePageWeb extends StatefulWidget {
  const ProfilePageWeb({Key? key}) : super(key: key);

  @override
  State<ProfilePageWeb> createState() => _ProfilePageWebState();
}

class _ProfilePageWebState extends State<ProfilePageWeb> {
  @override
  Widget build(BuildContext context) {
    final double _widthS = MediaQuery.of(context).size.width;
    final double _heightS = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const Drawer(),
      drawerScrimColor: Colors.grey,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [

            const SizedBox(height: 32,),
            _widthS >= 885
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Left Side
                      SizedBox(
                        height: _heightS * 0.7,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const ProfileName(
                                name: 'Yash Sharma',
                                email: 'yaaash123@gmail.com',
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                elevation: 4,
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  width: 400,
                                  child: Column(children: const [
                                    OptionTiles(
                                      icon: Icons.person_outline,
                                      title: 'About Us',
                                    ),
                                    OptionTiles(
                                        title: 'Follow Us',
                                        icon: Icons.favorite_outline),
                                    OptionTiles(
                                        title: 'Customer Care',
                                        icon: Icons.chat_bubble_outline),
                                    OptionTiles(
                                        title: 'Feedback',
                                        icon: Icons.star_border_outlined),
                                    OptionTiles(
                                        title: 'Terms and Conditions',
                                        icon: Icons.book_outlined),
                                    OptionTiles(
                                        title: 'Log Out',
                                        icon: Icons.logout_outlined),
                                  ]),
                                ),
                              )
                            ]),
                      ),
                      _widthS > 885
                          ? const SizedBox(
                              width: 32,
                            )
                          : const SizedBox(),

                      // Right Side
                      _widthS >= 885
                          ? SizedBox(
                              width: _widthS * 0.5,
                              height: _heightS*0.7,
                              child: GridView.builder(
                                // padding: const EdgeInsets.only(top: 72),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: 2,
                                        mainAxisSpacing: 8,
                                        crossAxisSpacing: 8,
                                        mainAxisExtent: 200),
                                        itemCount: 4,
                                itemBuilder: (context,constraints){
                                  return const HoveringTiles(
                                    name: 'Your Orders',
                                    icon: Icons.credit_card_outlined,
                                  );
                                }
                              ),
                            )
                          : const SizedBox()
                    ],
                  )
                : const ProfileName(
                    name: 'Yash Sharma',
                    email: 'yaaash123@gmail.com',
                  ),
            const SizedBox(
              height: 16,
            ),
            _widthS < 885
                ? SizedBox(
                    width: 400,
                    height: 220,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        // mainAxisExtent: 120
                      ),
                      itemCount: 4,
                      itemBuilder: (context,constraints){
                                  return const HoveringTiles(
                                    name: 'Your Orders',
                                    icon: Icons.credit_card_outlined,
                                  );
                                }
                    ),
                  )
                : const SizedBox(),
            _widthS < 885
                ?Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 4,
              child: Container(
                padding: const EdgeInsets.all(16),
                width: 400,
                child: Column(children: const [
                  OptionTiles(
                    icon: Icons.person_outline,
                    title: 'About Us',
                  ),
                  OptionTiles(title: 'Follow Us', icon: Icons.favorite_outline),
                  OptionTiles(
                      title: 'Customer Care', icon: Icons.chat_bubble_outline),
                  OptionTiles(
                      title: 'Feedback', icon: Icons.star_border_outlined),
                  OptionTiles(
                      title: 'Terms and Conditions', icon: Icons.book_outlined),
                  OptionTiles(title: 'Log Out', icon: Icons.logout_outlined),
                ]),
              ),
            ):SizedBox(),
            
            
            const SizedBox(
              height: 32,
            ),
            const AboutUs()
          ],
        ),
      ),
    );
  }
}

class HoveringTiles extends StatelessWidget {
  const HoveringTiles(
      {Key? key, required this.name, required this.icon, this.onTap})
      : super(key: key);
  final String name;
  final IconData icon;

  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 2,
        color: Colors.orange[50],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 30,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                name,
                style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OptionTiles extends StatelessWidget {
  const OptionTiles({Key? key, required this.title, required this.icon})
      : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black54,
        size: 25,
      ),
      title: Text(
        title,
        style: GoogleFonts.lato(textStyle: TextStyle()),
      ),
    );
  }
}

class ProfileName extends StatelessWidget {
  const ProfileName({
    Key? key,
    required this.name,
    required this.email,
  }) : super(key: key);
  final String name;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        width: 400,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipOval(
                  child: SizedBox(
                width: 100,
                height: 100,
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROZTgJiqRWL5wWednBz8zyRUhSuEDTzefieg&usqp=CAU',
                    fit: BoxFit.cover),
              )),
              SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 17)),
                  ),
                  Text(
                    email,
                    style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 17)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
