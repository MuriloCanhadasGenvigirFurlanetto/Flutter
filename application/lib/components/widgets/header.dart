import 'package:flutter/material.dart';

class HeaderWithSearch extends StatelessWidget {
  const HeaderWithSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.red[600],
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Pesquisar...",
          hintStyle: const TextStyle(color: Colors.white70),
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.search, color: Colors.white),
        ),
        style: const TextStyle(color: Colors.white),
        enabled: false, // não funcional
      ),
    );
  }
}