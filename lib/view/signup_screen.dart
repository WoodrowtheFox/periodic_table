import 'package:flutter/material.dart';
import '../presenter/auth_presenter.dart';
import 'login_screen.dart';
import 'main_navigation.dart';

class SignupScreen extends StatefulWidget{
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _confirmPasswordcontroller = TextEditingController();
  final _presenter = AuthPresenter();

  String? _errrorMessage;
  
  void _handleSignup() async {
    final password = _passwordcontroller.text.trim();
    final confirmPassword = _confirmPasswordcontroller.text.trim();

    if (password != confirmPassword) {
      setState(() => _errrorMessage = "Passwords do not match.");
      return;
    }
    final error = await _presenter.singUp(
      _emailcontroller.text.trim(), password,);
    if (error != null) {
      setState(() => _errrorMessage = error);
    } else{
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const MainNavigationScreen()));
    }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if(_errrorMessage != null)
              Text(_errrorMessage!, style: const TextStyle(color: Colors.red)),
            TextField(
              controller: _emailcontroller,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordcontroller,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            TextField(
              controller: _confirmPasswordcontroller,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Confrim Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _handleSignup, 
              child: const Text('Sign Up')
            ),
            TextButton(onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (_) => const LoginScreen()),
                );
            },
            child: const Text('Already have an account? Log in')
            ),
          ],
        ),
        ),
    );
  }
}