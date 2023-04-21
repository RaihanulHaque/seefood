import 'package:flutter/material.dart';
import 'package:seefood/screens/main/home.dart';
import 'package:seefood/screens/main/introdction.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool? isViewed;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getBool('isViewed') ?? false;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
        ),
        // home: const MyHome(),
        // home: const TestHome(),
        // home: const OnBoardingScreen(),
        home: isViewed == true ? const MyHome() : const OnBoardingScreen(),
      ),
    );
  }
}
