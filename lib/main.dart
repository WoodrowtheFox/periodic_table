import 'package:flutter/material.dart';
import 'package:periodic_table/PerodicGame.dart';
import 'dart:async';

void main() {
  runApp(const PerodicApp());
}

class PerodicApp extends StatelessWidget {
  const PerodicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perodic App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => const PerodicGame()));
    });
  }
   @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Perodic App',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

}
