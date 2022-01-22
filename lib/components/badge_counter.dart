import 'package:flutter/material.dart';

class BadgeCounter extends StatelessWidget {
  final int data;

  BadgeCounter({required this.data});

  @override
  Widget build(BuildContext context) {
    if (data == 0) return Container();

    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(7),
      ),
      constraints: BoxConstraints(
        minWidth: 14,
        minHeight: 14,
      ),
      child: Text(
        data.toString(),
        style: TextStyle(
          color: Colors.white,
          fontSize: 9,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
