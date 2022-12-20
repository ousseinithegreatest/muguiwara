import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:muguiwara/views/home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
  // State<Home> createState() => _HomeState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'images/logo.png',
      ),
      logoWidth: 100,
      // backgroundColor: Colors.yellow.shade800,
      title: const Text(
        "Muguiwara",
        style: TextStyle(
            color: Color.fromARGB(255, 199, 16, 3),
            fontFamily: "One Piece",
            fontSize: 40),
      ),
      showLoader: true,
      navigator: const Home(),
      durationInSeconds: 5,
      loaderColor: const Color.fromARGB(255, 199, 16, 3),
    );
  }
}
