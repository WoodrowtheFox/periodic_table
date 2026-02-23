import 'package:flutter/material.dart';
import 'package:periodic_table/PerodicGame.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'view/main_navigation.dart';
import 'view/login_screen.dart';

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
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot){
        if (snapshot.connectionState == ConnectionState.waiting){
          return const Scaffold(
            backgroundColor: Colors.blue,
            body: Center(
              child: Text(
                'Periodic App',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ),
          );
        }
        if(snapshot.hasData){
          return const MainNavigationScreen();
        }
        return const LoginScreen();
      },
    );
  }
}
