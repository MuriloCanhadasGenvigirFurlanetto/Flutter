import 'package:flutter/material.dart';
import 'components/widgets/home.dart';

void main() {
  runApp(const MyApp());
}

// ===================== APP =====================
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hemovida',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.grey[100],
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
