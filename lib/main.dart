import 'package:bim_app/pages/calculate_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BimApp());
}

class BimApp extends StatelessWidget {
  const BimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatePage(),
    );
  }
}
