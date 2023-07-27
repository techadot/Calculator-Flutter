// Project Name: calculator_app
// Summary: This file contains the main function of the app and the stateful widget class.
// The Tbib_splash_screen package is used to create the splash screen.
// The splash screen is displayed for 7 seconds and then the calculator screen is displayed.
// The splash screen is created using the WavyAnimatedText widget.
// The splash screen image is stored in the assets folder.
// The splash screen image and image are displayed using the imageSrc and text property of the SplashScreenView widget.
// The splash screen text is styled and animated using the textStyle property of the WavyAnimatedText widget.
// The splash screen is displayed using the SplashScreenView widget.
// The Flutter/material.dart package is imported to use the material design components.
// The calculator_screen.dart file is imported to navigate to the calculator screen.
import 'package:tbib_splash_screen/splash_screen_view.dart';
import 'package:calculator_app/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

// we are creating a stateful widget because we want to change the state of the app
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// we are creating a state class and extending it with the state of the app
class _MyAppState extends State<MyApp> {
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await Future.delayed(const Duration(seconds: 7));
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
