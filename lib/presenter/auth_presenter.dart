import '../model/auth_model.dart';
// This is the presenter for the auth model
class AuthPresenter {
  final AuthModel _model = AuthModel();

  Future<String?> login(String email, String password){
    return _model.login(email, password);
  }

  Future<String?> singUp(String email, String password){
    return _model.singUp(email, password);
  }

  Future<void> logout() => _model.singOut();

  Stream authStateChanges() => _model.authStateChanges();

  String? getCurrentUserEmail() => _model.currentUser?.email;
  
}