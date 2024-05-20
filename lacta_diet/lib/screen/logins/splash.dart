import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lacta_diet/screen/consent/colors.dart';
import 'package:lacta_diet/screen/logins/main_page.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('splash on__________________________________________');
  }
  @override
  Widget build(BuildContext context) {

    return EasySplashScreen(
      logo: Image.asset(
        'images/grey.png',

      ),
     logoWidth: 130,
     // title: Text(
       // 'Mobile Nutrition ',
      //  style: GoogleFonts.bebasNeue(
       //   color: Colors.red,
       //   fontSize: 20,
       // ),
     // ),
      backgroundColor: Colors.deepPurple.shade200,
      showLoader: true,
      loaderColor: Colors.white,
      navigator: MainPage(),
      durationInSeconds: 3,
    );
  }
}
