import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/103.jpg',
      fit: BoxFit.cover,
      color: Colors.grey.withOpacity(0.7),
      colorBlendMode: BlendMode.darken,
    );
  }
}
