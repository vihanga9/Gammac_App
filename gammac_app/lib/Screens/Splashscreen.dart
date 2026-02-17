import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gammac_app/Screens/Subjects.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => const Subjects()));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(28), // Image border
            child: SizedBox.fromSize(
              size: const Size.fromRadius(170), // Image radius
              child: Image.asset('assests/images/gammacapp_logo.jpg',
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
