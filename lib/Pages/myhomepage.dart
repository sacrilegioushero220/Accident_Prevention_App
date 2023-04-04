import 'package:flutter/material.dart';

import 'apspage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: const Color(0xFF040404),
        child: Center(
          child: Column(
            children: [
              Container(
                color: const Color(0xFF040404),
                height: 720,
                width: 1280,
                child: Row(
                  children: [
                    SizedBox(
                      //color: const Color(0xFF040404),
                      height: 810,
                      width: 200,

                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFF040404),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const SizedBox(height: 10),
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
                        ),
                      ),
                    ),
                    Container(
                      color: const Color(0xFF040404),
                      height: 806,
                      width: 1080,
                      child: Container(
                        child: Image.asset(
                          'assets/icons/page1/car34.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color(0xFF040404),
                height: 100,
                width: 1280,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF040404),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(height: 10),
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
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ApsPage()),
                                );
                              },
                              icon: Image.asset(
                                'assets/icons/page1/APS.png',
                                height: 60,
                                width: 60,
                              ),
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
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
