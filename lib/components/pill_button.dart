import 'package:flutter/material.dart';

class PillButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double? height;
  final bool isLoading;
  final bool enabled;

  PillButton({
    required this.label,
    required this.onPressed,
    this.enabled = true,
    this.isLoading = false,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        height: height ?? 56,
        width: MediaQuery.of(context).size.width,
      ),
      child: ElevatedButton(
        child: !isLoading
            ? Text(label)
            : Container(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(color: Colors.blue),
              ),
        onPressed: (isLoading || !enabled) ? null : onPressed,
      ),
    );
  }
}
