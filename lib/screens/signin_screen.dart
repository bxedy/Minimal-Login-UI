import 'package:minimal_login_ui/screens/reset_pass_screen.dart';
import 'package:minimal_login_ui/widgets/login_with_google.dart';
import 'package:minimal_login_ui/widgets/login_with_twitter_card.dart';
import 'package:minimal_login_ui/widgets/black_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimal_login_ui/constants.dart';
import 'package:minimal_login_ui/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _welcomeBackText(),
                  _showSignupButton(context),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _emailField(),
                  _passwordField(),
                  _forgotPasswordButton(context),
                  _loginButton(),
                  _orLoginWithText(),
                  _loginWithTwitterCard(),
                  _loginWithGoogleCard()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _welcomeBackText() {
    return Text(
      'Welcome Back',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        fontSize: 33,
      ),
    );
  }

  Widget _showSignupButton(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text(
        'New to MyApp?',
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
      SizedBox(width: 5.0),
      InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SignupScreen(),
            ),
          );
        },
        child: Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.black26,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
          ),
        ),
      )
    ]);
  }

  Widget _emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.black,
      cursorHeight: 23,
      decoration: kTextFormFieldDecoration.copyWith(labelText: 'EMAIL'),
    );
  }

  Widget _passwordField() {
    return TextFormField(
      cursorColor: Colors.black,
      cursorHeight: 23,
      obscureText: true,
      decoration: kTextFormFieldDecoration.copyWith(
        labelText: 'PASSWORD',
      ),
    );
  }

  Widget _forgotPasswordButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Container(
        child: InkWell(
          child: Text(
            'Forgot Password',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
              decoration: TextDecoration.underline,
            ),
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ResetPassScreen()),
            );
          },
        ),
      ),
    );
  }

  Widget _loginButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: BlackCard(text: 'Sign In'),
    );
  }

  Widget _loginWithTwitterCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: TwitterCard(),
    );
  }

  Widget _loginWithGoogleCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: GoogleCard(),
    );
  }

  Widget _orLoginWithText() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text('Or sign in with:'),
    );
  }
}
