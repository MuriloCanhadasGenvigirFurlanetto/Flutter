import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  final String imagePath; // local asset path
  final String? title;    // optional text overlay

  const BannerWidget({
    super.key,
    required this.imagePath,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(28, 0, 0, 0),
            blurRadius: 6,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // local asset image
            Image.asset(
              imagePath,
              width: 400,
              fit: BoxFit.cover,
            ),
            // optional semi-transparent overlay with text
            if (title != null)
              Container(
                color: Colors.black.withOpacity(0.4),
                width: double.infinity,
                padding: const EdgeInsets.all(16),
              ),
          ],
        ),
      ),
    );
  }
}
