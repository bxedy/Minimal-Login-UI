import 'package:minimal_login_ui/widgets/top_card.dart';
import 'package:flutter/material.dart';
import 'package:minimal_login_ui/widgets/bottom_card.dart';
import 'package:minimal_login_ui/constants.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Signup',
                          style:
                              TextStyle(fontFamily: 'Trueno', fontSize: 60.0),
                        ),
                        Text(
                          '.',
                          style: TextStyle(
                              fontFamily: 'Trueno',
                              fontSize: 60.0,
                              color: Colors.black26),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextFormField(
                      cursorColor: Colors.black,
                      cursorHeight: 23,
                      decoration: kTextFormFieldDecoration.copyWith(
                        labelText: 'YOUR NAME',
                      ),
                      onChanged: (value) {},
                    ),
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
                          labelText: 'PASSWORD'),
                      onChanged: (value) {},
                    ),
                  ],
                ),
                Column(children: [
                  TopCard(
                    text: 'SIGNUP',
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  BottomCard(
                    text: 'Go back',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ])
              ]),
        ),
      ),
    );
  }
}
