import 'package:flutter/material.dart';

class BlackCard extends StatelessWidget {
  BlackCard({this.onTap, required this.text});
  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50.0,
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.black,
          elevation: 0,
          child: Center(
            child: Text(
              text,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
