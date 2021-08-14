import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  BottomCard({required this.onTap, required this.text});

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50.0,
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black, style: BorderStyle.solid, width: 1.0),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontFamily: 'Trueno'),
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
