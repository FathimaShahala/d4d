import 'package:flutter/material.dart';

class NAccount extends StatefulWidget {
  const NAccount({super.key});

  @override
  State<NAccount> createState() => _NAccountState();
}

class _NAccountState extends State<NAccount> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Account',
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}
