import 'package:firebase_auth/firebase_auth.dart';

class AuthRepos {
  final FirebaseAuth _firebaseAuth;

  AuthRepos({FirebaseAuth? firebaseAuth}) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  Future<UserCredential> login(String email, String password) async {
    return await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<UserCredential> register(String userName, String email, String password) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

}