import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: const Color(0xFF040404),
        child: Center(
          child: Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: const Color(0xFF040404),
                    height: 720,
                    width: 1280,
                    child: Row(
                      children: [
                        SizedBox(
                          //color: const Color(0xFF040404),
                          height: 810,
                          width: 200,

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
                                        'assets/icons/page1/download.png',
                                        height: 65,
                                        width: 65,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Expanded(
                                      child: Image.asset(
                                        'assets/icons/page1/steering-wheel-1.png',
                                        height: 75,
                                        width: 75,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            color: const Color(0xFF040404),
                            height: 806,
                            width: 1080,
                            child: Column(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 497,
                                    width: 590,
                                    child: Image.asset(
                                      'assets/icons/page1/car34.png',
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF040404),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                      height: 100,
                                      width: 350,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF040404),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                      height: 100,
                                      width: 350,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF040404),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                      height: 100,
                                      width: 350,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xFF040404),
                  height: 100,
                  width: 1290,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                                  //Navigator.push(
                                  // context,
                                  // MaterialPageRoute(
                                  //    builder: (context) => const ApsPage()),
                                  //);
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
        ),
      )),
    );
  }
}
