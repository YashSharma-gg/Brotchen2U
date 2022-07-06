import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // for background image
        ShaderMask(
          shaderCallback: (rect) => const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [Colors.black, Colors.transparent]).createShader(rect),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('lib/assets/loginPage_backgroundImg.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
            )),
          ),
        ),

        Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                // Name of the app
                Flexible(
                    child: Center(
                        child: Text(
                  'Brotchen2U',
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  )),
                ))),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),

                  // Login
                  child: SizedBox(
                      child: Text(
                    '────── Login ──────',
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                  )),
                ),

                // All the login methods, soon to be added
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Google Sign in button
                    ClipOval(
                      child: Material(
                        color: Colors.white, // Button color
                        child: InkWell(
                            // Splash color
                            onTap: () {},
                            child: SizedBox(
                                width: 70,
                                height: 70,
                                child:
                                    Image.asset('lib/assets/google_icon.jpg'))),
                      ),
                    )
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
