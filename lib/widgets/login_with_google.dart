import 'package:flutter/material.dart';

class GoogleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black, style: BorderStyle.solid, width: 1.0),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/images/google-logo.jpg'),
              height: 24,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text('Sign in with Google',
                style: TextStyle(fontWeight: FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}
