import 'package:flutter/material.dart';
import 'package:shop/utilities/colors.dart';

class CircularTextButton extends StatelessWidget {
  final String data;
  final bool isSelected;
  final Function(String) onTap;

  const CircularTextButton({
    required this.data,
    required this.onTap,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        child: InkWell(
          splashColor: AppColors.ebony.withAlpha(20),
          onTap: () {
            onTap(data);
          },
          child: Container(
            height: 42,
            width: 42,
            child: Center(
              child: Text(
                data,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.black : Colors.black26,
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100.0)),
              border: Border.all(
                width: 2.4,
                color: isSelected ? AppColors.ebony : Colors.black26,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
