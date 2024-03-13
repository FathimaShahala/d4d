
import 'package:flutter/material.dart';

class NSearch extends StatefulWidget {
  const NSearch({super.key});

  @override
  State<NSearch> createState() => _NSearchState();
}

class _NSearchState extends State<NSearch> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Search',
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}
