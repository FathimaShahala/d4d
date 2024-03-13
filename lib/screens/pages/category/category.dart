
import 'package:flutter/material.dart';

class NCategory extends StatefulWidget {
  const NCategory({super.key});

  @override
  State<NCategory> createState() => _NCategoryState();
}

class _NCategoryState extends State<NCategory> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Category',
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}
