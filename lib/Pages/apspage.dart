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
                  width: 1280,
                  height: 200,
                  color: const Color(0xFF040404),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Text(
                        "Accident Prevention System",
                        style: TextStyle(
                            fontSize: 60,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 1280,
                  height: 310,
                  color: const Color(0xFF040404),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 100,
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
                        height: 200,
                        width: 300,
                        child: Column(
                          children: [
                            IconButton(
                              iconSize: 130,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ApsPage()),
                                );
                              },
                              icon: Image.asset(
                                'assets/icons/page2/steering-wheel-1.png',
                              ),
                            ),
                            const Text("Drowsiness Detection",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
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
                        height: 200,
                        width: 300,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: IconButton(
                                iconSize: 100,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const ApsPage()),
                                  );
                                },
                                icon: Image.asset(
                                  'assets/icons/page2/download (1).png',
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text("Traffic Sign Detection",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
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
                        height: 200,
                        width: 300,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: IconButton(
                                iconSize: 100,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const ApsPage()),
                                  );
                                },
                                icon: Image.asset(
                                  'assets/icons/page2/gas-mask.png',
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text("Toxic Gas Detection",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1280,
                  height: 310,
                  color: const Color(0xFF040404),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF040404),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                          height: 200,
                          width: 300,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: IconButton(
                                  iconSize: 100,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ApsPage()),
                                    );
                                  },
                                  icon: Image.asset(
                                    'assets/icons/page2/champagne.png',
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text("Alcohol Detection",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF040404),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                          height: 200,
                          width: 300,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: IconButton(
                                  iconSize: 100,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MyHomePage()),
                                    );
                                  },
                                  icon: Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Image.asset(
                                      'assets/icons/page2/home-sign.png',
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text("Home",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 100,
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
