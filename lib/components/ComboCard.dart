import 'package:flutter/material.dart';

class ComboCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final Color? backgroundColor;

  const ComboCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth / 2.5;

    return Container(
      width: cardWidth,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(image, height: 100),
            Text(title),
            Text(price),
          ],
        ),
      ),
    );
  }
}
