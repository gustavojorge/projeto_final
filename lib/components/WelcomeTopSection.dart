import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  final BoxConstraints constraints;

  const TopSection({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth,
      color: const Color.fromRGBO(255, 164, 81, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Image.asset("assets/basket1.png", width: constraints.maxWidth * 0.7, fit: BoxFit.contain),
          ),
          Image.asset("assets/elipse1.png", width: constraints.maxWidth * 0.7, fit: BoxFit.contain),
        ],
      ),
    );
  }
}