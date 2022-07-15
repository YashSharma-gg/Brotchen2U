import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final curWidth = MediaQuery.of(context).size.width;
    final curHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      
      backgroundColor: Colors.green,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Expanded(child: SizedBox(width: curWidth, height: curHeight, child: Image.network('https://images.pexels.com/photos/1510684/pexels-photo-1510684.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', fit: BoxFit.cover, ))),
            Card(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Container(
                alignment: Alignment.center,
                height: 500,
                width: 500,
                
                child: SingleChildScrollView(
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('B R O T C H E N 2 U', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),),
                        const SizedBox(height: 80,),
                        Text('CONTINUE WITH', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),),
                        const SizedBox(height: 40,),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('lib/assets/google-login-icon-24.jpg')),borderRadius: BorderRadius.circular(50)),
                            
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}