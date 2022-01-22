import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BrandCard extends StatelessWidget {
  final String image;
  final double width;
  final EdgeInsetsGeometry margin;
  final GestureTapCallback? onTap;
  final bool showBorder;

  BrandCard({
    required this.image,
    this.onTap,
    this.width = 120,
    this.margin = const EdgeInsets.all(6.0),
    this.showBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: width,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: margin,
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: showBorder
                ? Border.all(
                    color: theme.dividerColor,
                  )
                : null,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(child: Image.asset(image)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
