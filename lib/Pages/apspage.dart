import 'package:aps_release_1/Pages/myhomepage.dart';
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
            child: Column(
              children: [
                Container(
                  color: const Color(0xFF040404),
                  height: 820,
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
                                        'assets/icons/page2/steering-wheel-1.png',
                                        height: 100,
                                        width: 100,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Expanded(
                                      child: Image.asset(
                                        'assets/icons/page2/download (1).png',
                                        height: 65,
                                        width: 65,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Expanded(
                                      child: Image.asset(
                                        'assets/icons/page2/gas-mask.png',
                                        height: 65,
                                        width: 65,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Expanded(
                                      child: Image.asset(
                                        'assets/icons/page2/champagne.png',
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Expanded(
                                      child: IconButton(
                                        iconSize: 50,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const MyHomePage()),
                                          );
                                        },
                                        icon: Image.asset(
                                          'assets/icons/page2/home-sign.png',
                                        ),
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
                        child: Center(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Text(
                                  "Accident Prevention System",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
