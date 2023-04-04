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
                height: 720,
                width: 1280,
                child: Row(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 2, 71, 43),
                      height: 810,
                      width: 200,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'assets/icons/page1/0935.png',
                                height: 65,
                                width: 65,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: Image.asset(
                                'assets/icons/page1/Path 1.png',
                                height: 65,
                                width: 65,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: Image.asset(
                                'assets/icons/page1/play-button.png',
                                height: 65,
                                width: 65,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: Image.asset(
                                'assets/icons/page1/car.png',
                                height: 65,
                                width: 65,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: Image.asset(
                                'assets/icons/page1/app.png',
                                height: 65,
                                width: 65,
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 196, 184, 17),
                      height: 806,
                      width: 1080,
                      //child: Image.asset('assets/icons/page1/app.png'),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 33, 243, 156),
                height: 100,
                width: 1280,
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/icons/page1/steering-wheel.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Image.asset(
                        'assets/icons/page1/heat.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Image.asset(
                        'assets/icons/page1/Group 1.png',
                        height: 55,
                        width: 55,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Image.asset(
                        'assets/icons/page1/fan.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Image.asset(
                        'assets/icons/page1/Group 2.png',
                        height: 55,
                        width: 55,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Image.asset(
                        'assets/icons/page1/APS.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Image.asset(
                        'assets/icons/page1/sport-car.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
