import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                height: 806,
                width: 1280,
                child: Row(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 2, 71, 43),
                      height: 810,
                      width: 90,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 196, 184, 17),
                      height: 806,
                      width: 1190,
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 33, 243, 156),
                height: 70,
                width: 1280,
                child: Row(),
              )
            ],
          ),
        ),
      )),
    );
  }
}
