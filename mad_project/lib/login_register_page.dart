import 'package:firebase_auth/firebase_auth.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:mad_project/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:math';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String errorMessage = '';
  String errorPwdMessage = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerCfrmPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    if (_controllerPassword.text == _controllerCfrmPassword.text) {
      try {
        await Auth().createUserWithEmailAndPassword(
          confirmPwd: _controllerCfrmPassword.text,
          email: _controllerEmail.text,
          password: _controllerPassword.text,
          name: _controllerName.text,
          phone: _controllerPhone.text,
        );
      } on FirebaseAuthException catch (e) {
        setState(() {
          errorMessage = e.message;
        });
      }
    } else {
      setState(() {
        errorPwdMessage = 'Password Is Not the Same';
        print('Password Is Not The Same');
      });
    }
  }

  Widget _title() {
    return const Text('BurgerVio Login Page');
  }

  Widget _loginLogo() {
    return Image(
      image: AssetImage("images/logo-no-background.png"),
      height: 250,
    );
  }

  Widget _entryField(
    String title,
    TextEditingController controller,
  ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: title,
      ),
    );
  }

  Widget _entryFieldPhone(
    String title,
    TextEditingController controller,
  ) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: title,
        ),
        keyboardType: TextInputType.number);
  }

  Widget _entryFieldPWD(
    String title,
    TextEditingController controller,
  ) {
    return TextField(
      controller: controller,
      obscureText: true,
      decoration: InputDecoration(
        labelText: title,
      ),
    );
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : 'Humm ? $errorMessage');
  }

  Widget _errorPwdMessage() {
    return Text(errorPwdMessage == '' ? '' : 'Password Is Not The Same');
  }

  Widget _submitButton() {
    return ElevatedButton(
      onPressed:
          isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
      child: Text(isLogin ? 'Login' : 'Register'),
    );
  }

  Widget _loginOrRegisterButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      child: Text(
        isLogin ? 'Register for an account' : 'Have an account? Log In',
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget loginForm() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _entryField('Email', _controllerEmail),
          _entryFieldPWD('password', _controllerPassword),
        ]);
  }

  Widget registerForm() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _entryField('Email', _controllerEmail),
          _entryField('Name', _controllerName),
          _entryFieldPhone('Mobile Number', _controllerPhone),
          _entryFieldPWD('Password', _controllerPassword),
          _entryFieldPWD('Confirm Password', _controllerCfrmPassword),
          _errorPwdMessage(),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: GradientAppBar(
        centerTitle: true,
        title: _title(),
        // backgroundColorStart: Colors.white,
        // backgroundColorEnd: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 720,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.orange[200], Colors.white])),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _loginLogo(),
              isLogin ? loginForm() : registerForm(),
              _errorMessage(),
              _submitButton(),
              _loginOrRegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}
