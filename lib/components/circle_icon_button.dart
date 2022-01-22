import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final GestureTapCallback? onTap;

  const CircleIconButton({
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.black12,
        child: InkWell(
          onTap: onTap,
          child: SizedBox(
            width: 34,
            height: 34,
            child: Icon(
              Icons.delete_outline,
              color: Colors.black54,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}
