import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:math';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User get currentUser => _firebaseAuth.currentUser;

  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signInWithEmailAndPassword({
    String email,
    String password,
  }) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> createUserWithEmailAndPassword({
    String email,
    String password,
    String name,
    String phone,
    String confirmPwd,
  }) async {
    final database = FirebaseDatabase.instance.reference();
    final addUser = database.child('/user');

    await addUser.push().set({"email": email, "name": name, "phone": phone});

    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
