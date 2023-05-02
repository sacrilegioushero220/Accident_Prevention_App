import 'package:flutter/material.dart';

class ApsPage extends StatelessWidget {
  const ApsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
            body: Container(
          color: const Color(0xFF040404),
          child: Center(
            child: Column(),
          ),
        )),
      ),
    );
  }
}
