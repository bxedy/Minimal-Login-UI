import 'package:minimal_login_ui/widgets/twitter_card.dart';
import 'package:minimal_login_ui/widgets/top_card.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Whats',
                      style: TextStyle(fontFamily: 'Trueno', fontSize: 60.0),
                    ),
                    Row(
                      children: [
                        Text(
                          'Up',
                          style:
                              TextStyle(fontFamily: 'Trueno', fontSize: 60.0),
                        ),
                        Text(
                          '?',
                          style: TextStyle(
                              fontFamily: 'Trueno',
                              fontSize: 60.0,
                              color: Colors.black26),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black,
                      cursorHeight: 23,
                      decoration:
                          kTextFormFieldDecoration.copyWith(labelText: 'EMAIL'),
                      onChanged: (value) {},
                    ),
                    TextFormField(
                      cursorColor: Colors.black,
                      cursorHeight: 23,
                      obscureText: true,
                      decoration: kTextFormFieldDecoration.copyWith(
                        labelText: 'PASSWORD',
                      ),
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    TopCard(text: 'LOGIN', onTap: () {}),
                    SizedBox(
                      height: 17,
                    ),
                    TwitterCard(),
                    SizedBox(
                      height: 15,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text('New to MyApp ?'),
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
                          'Register',
                          style: TextStyle(
                            color: Colors.black26,
                            fontFamily: 'Trueno',
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ])
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
