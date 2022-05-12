import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        elevation: 0.0,
        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
        shape: CircleBorder(),
        fillColor: kRawMaterialButtonBackgroundColor,
        onPressed: onPressed);
  }
}
