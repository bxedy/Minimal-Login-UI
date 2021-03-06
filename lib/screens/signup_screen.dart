import 'package:minimal_login_ui/screens/signin_screen.dart';
import 'package:minimal_login_ui/widgets/black_card.dart';
import 'package:flutter/material.dart';
import 'package:minimal_login_ui/constants.dart';
import 'package:minimal_login_ui/widgets/login_with_google.dart';
import 'package:minimal_login_ui/widgets/login_with_twitter_card.dart';

class SignupScreen extends StatelessWidget {
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
                  _createAccountText(),
                  _showSigInButton(context),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _userNameField(),
                  _emailField(),
                  _passwordField(),
                  _confirmPassField(),
                  _signupButton(),
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

  Widget _createAccountText() {
    return Text(
      'Create Account',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
        fontSize: 33,
      ),
    );
  }

  Widget _showSigInButton(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text(
        'Already a member?',
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
      SizedBox(width: 5.0),
      InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );
        },
        child: Text(
          'Sign In',
          style: TextStyle(
            color: Colors.black26,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
          ),
        ),
      )
    ]);
  }

  Widget _userNameField() {
    return TextFormField(
      cursorColor: Colors.black,
      cursorHeight: 23,
      decoration: kTextFormFieldDecoration.copyWith(
        labelText: 'YOUR NAME',
      ),
    );
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
      decoration: kTextFormFieldDecoration.copyWith(labelText: 'PASSWORD'),
    );
  }

  Widget _confirmPassField() {
    return TextFormField(
      cursorColor: Colors.black,
      cursorHeight: 23,
      obscureText: true,
      decoration:
          kTextFormFieldDecoration.copyWith(labelText: 'CONFIRM PASSWORD'),
    );
  }

  Widget _signupButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: BlackCard(
        text: 'Sign Up',
      ),
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
    return Text('Or sign in with:');
  }
}
