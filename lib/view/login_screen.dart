import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../presenter/auth_presenter.dart';
import 'main_navigation.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _presenter = AuthPresenter();

  String? _errorMessage;

  void _handleLogin() async {
    final error = await _presenter.login(
        _emailcontroller.text.trim(),
        _passwordcontroller.text.trim(),
    );

    if (error != null) {
      setState(() => _errorMessage = error);
    } else {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (_) => const MainNavigationScreen()), 
        );
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        automaticallyImplyLeading: false,
        ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if(_errorMessage != null)
              Text(_errorMessage!, style: const TextStyle(color: Colors.red)),
            TextField(
              controller: _emailcontroller,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordcontroller,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _handleLogin, child: const Text('Login')),
            TextButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (_) => const SignupScreen()),
                  );
              },
              child: const Text('Dont have an account? Sign up'),
              ),
              TextButton(
              onPressed: () async {
                await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailcontroller.text.trim());
              },
              child: const Text('Forgot Password?'),
              ),
          ],
        ),
      ),
    );
  }
}