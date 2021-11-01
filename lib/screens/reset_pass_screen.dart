import 'package:minimal_login_ui/widgets/black_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimal_login_ui/constants.dart';

class ResetPassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _resetPasswordText(),
                  _emailField(),
                  SizedBox(height: 10),
                  _resetPassButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _resetPasswordText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reset password',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
            fontSize: 33,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Please enter your email address',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ],
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

  Widget _resetPassButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: BlackCard(text: 'Reset password', onTap: () {}),
    );
  }
}
