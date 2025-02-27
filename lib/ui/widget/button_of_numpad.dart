import 'package:flutter/material.dart';

class ButtonOfNumPad extends StatelessWidget {
  const ButtonOfNumPad({Key? key, required this.num, this.onPressed})
      : super(key: key);

  final String num;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: FloatingActionButton.extended(
        heroTag: num,
        elevation: 2,
        backgroundColor: const Color(0xFFf5f5f8),
        onPressed: onPressed,
        label: Text(
          num,
          style: const TextStyle(color: Color(0xFF687ea1)),
        ),
      ),
    );
  }
}
