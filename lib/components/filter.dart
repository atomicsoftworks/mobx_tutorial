import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Filter extends StatelessWidget {
  final Function(String) onPressed;

  Filter({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MaterialButton(
            onPressed: () {},
            color: Colors.blue,
            textColor: Colors.white,
            child: Icon(
              Icons.camera_alt,
              size: 20,
            ),
            // padding: EdgeInsets.all(16),
            shape: CircleBorder(),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.blue,
            textColor: Colors.white,
            child: Icon(
              Icons.camera_alt,
              size: 20,
            ),
            // padding: EdgeInsets.all(16),
            shape: CircleBorder(),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.blue,
            textColor: Colors.white,
            child: Icon(
              Icons.camera_alt,
              size: 20,
            ),
            // padding: EdgeInsets.all(16),
            shape: CircleBorder(),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.blue,
            textColor: Colors.white,
            child: Icon(
              Icons.camera_alt,
              size: 20,
            ),
            // padding: EdgeInsets.all(16),
            shape: CircleBorder(),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.blue,
            textColor: Colors.white,
            child: Icon(
              Icons.camera_alt,
              size: 20,
            ),
            // padding: EdgeInsets.all(16),
            shape: CircleBorder(),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.blue,
            textColor: Colors.white,
            child: Icon(
              Icons.camera_alt,
              size: 20,
            ),
            // padding: EdgeInsets.all(16),
            shape: CircleBorder(),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.blue,
            textColor: Colors.white,
            child: Icon(
              Icons.camera_alt,
              size: 20,
            ),
            // padding: EdgeInsets.all(16),
            shape: CircleBorder(),
          ),
        ],
      ),
    );
  }
}
