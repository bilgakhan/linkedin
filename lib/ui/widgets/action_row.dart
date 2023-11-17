import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonOne extends StatelessWidget {
  IconData icon;
  String text;
  ButtonOne({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 28,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      );
}
