import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:periodic_table/view/Periodic_Table.dart';
import 'view/main_navigation.dart';
import 'view/login_screen.dart';
// This is the main class of the app that opens it and then navigates the main navigation if someone is signed in, otherwise goes to the login screen
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const PeriodicTableApp());
}

class PeriodicTableApp extends StatelessWidget {
  const PeriodicTableApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Periodic Table App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


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
