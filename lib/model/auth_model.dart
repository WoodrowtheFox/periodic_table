import 'package:firebase_auth/firebase_auth.dart';
// This is the class used to authnticate someone logining in, signing out, or if they need to make a new account
class AuthModel {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  // Used for logining a person in by using the email and password that they entered
  Future<String?> login(String email, String password) async {
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    }
    catch(e){
      return e.toString();
    }
  }

  // This is used to sign a person up if they dont have an account by using an email and new password
  Future<String?> singUp(String email, String password) async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return null;
    }
    catch(e){
      return e.toString();
    }
  }

  // This signs the current user out
  Future<String?> singOut() async{
    await _auth.signOut();
  }

  Stream<User?> authStateChanges() => _auth.authStateChanges();
  
  // This is for whoever the current signed in user is
  User? get currentUser => _auth.currentUser;
}