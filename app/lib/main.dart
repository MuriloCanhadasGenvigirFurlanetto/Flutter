import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: CardWidget(),
        ),
      ),

    );
  }
}

class CardWidget extends StatefulWidget {
  final String initialVal;
  final String initialLabel;

  const CardWidget({
      super.key,
      required this.initialVal,
      required this.initialLabel
    }): super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  int _value = ;
  String _card_label;

  @override
  void initState() {
    super.initState();
    this._value = widget.initialVal;
    this._card_label = widget.initialLabel
  }
  // Função para atualizar o contador
  void _setCounter(int val) {
    setState(() {
      _value = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(64),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$_value',
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
          Text(
            '$cardLabel and $_value',
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}