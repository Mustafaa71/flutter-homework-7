import 'package:flutter/material.dart';

class ScrollRectangle extends StatelessWidget {
  final String label;
  const ScrollRectangle({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(13.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade400,
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xFF2f387b),
          fontWeight: FontWeight.bold,
          fontSize: 17.0,
        ),
      ),
    );
  }
}
