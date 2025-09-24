import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  final String title;

  const BannerWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(131, 239, 83, 80),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(28, 0, 0, 0),
            blurRadius: 6,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}