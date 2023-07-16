import 'package:tbib_splash_screen/splash_screen_view.dart';
import 'package:calculator_app/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await Future.delayed(const Duration(seconds: 4));
    setState(() {
      _isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'NotoSans',
      ),
      home: SplashScreenView(
        navigateWhere: _isLoaded,
        navigateRoute: const CalculatorScreen(),
        text: WavyAnimatedText(
          "Czarify Ft Aptlearn.io",
          textStyle: const TextStyle(
            color: Colors.blue,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        imageSrc: "assets/splash_screen.png",
      ),
    );
  }
}
