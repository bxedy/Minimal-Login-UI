import 'package:flutter/material.dart';

class TwitterCard extends StatelessWidget {
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
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Image.asset('assets/images/black-twitter.jpg'),
                height: 30,
              ),
            ),
            SizedBox(width: 10.0),
            Center(
              child: Text(
                'Log in with Twitter',
                style: TextStyle(fontFamily: 'Trueno'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
