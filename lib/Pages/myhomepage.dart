// ignore_for_file: avoid_print

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final databaseReference = FirebaseDatabase.instance.ref();
  final sensorDataRef = FirebaseDatabase.instance.ref().child('sensor');
  double mq3Ppm = 0;
  double mq135Ppm = 0;
  @override
  void initState() {
    super.initState();
    _listenForSensorData();
  }

  void _listenForSensorData() {
    sensorDataRef.onValue.listen((event) {
      if (event.snapshot.value != null) {
        try {
          final sensorData = event.snapshot.value;
          if (sensorData is Map) {
            setState(() {
              mq3Ppm = sensorData['mq3_ppm'] is num
                  ? sensorData['mq3_ppm'].toDouble()
                  : null;
              mq135Ppm = sensorData['mq135_ppm'] is num
                  ? sensorData['mq135_ppm'].toDouble()
                  : null;
              print('mq3Ppm: $mq3Ppm');
              print('mq135Ppm: $mq135Ppm');
            });
          } else {
            print('sensorData is not a Map');
          }
        } catch (e) {
          print('Error parsing sensor data: $e');
        }
      }
    });
  }

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
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF040404),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 2,
                                          ),
                                        ),
                                        height: 100,
                                        width: 350,
                                        child: Center(
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(top: 10),
                                                child: Text(
                                                  "Alcohol Level",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: SfLinearGauge(
                                                  ranges: const [
                                                    LinearGaugeRange(
                                                      startValue: 100,
                                                      endValue: 300,
                                                      color: Color.fromARGB(
                                                          255, 48, 240, 57),
                                                    ),
                                                    LinearGaugeRange(
                                                      startValue: 300,
                                                      endValue: 500,
                                                      color: Color.fromRGBO(
                                                          237, 240, 48, 1),
                                                    ),
                                                    LinearGaugeRange(
                                                      startValue: 500,
                                                      endValue: 1000,
                                                      color: Color.fromARGB(
                                                          255, 240, 48, 48),
                                                    ),
                                                  ],
                                                  minimum: 100,
                                                  maximum: 1000,
                                                  axisLabelStyle:
                                                      const TextStyle(
                                                    color: Color.fromARGB(
                                                        255,
                                                        248,
                                                        248,
                                                        248), // set label text color to black
                                                  ),
                                                  axisTrackStyle:
                                                      const LinearAxisTrackStyle(
                                                          color: Colors.white),
                                                  markerPointers: [
                                                    LinearShapePointer(
                                                      value: mq135Ppm,
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 48, 99, 240),
                                                    )
                                                  ],
                                                  majorTickStyle:
                                                      const LinearTickStyle(
                                                          color: Colors.white,
                                                          length: 10),
                                                  minorTickStyle:
                                                      const LinearTickStyle(
                                                    color: Colors.white,
                                                    length: 5,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          /*Text(
                                            'Toxic Gas Level: $mq3Ppm',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),*/
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF040404),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 2,
                                          ),
                                        ),
                                        height: 100,
                                        width: 350,
                                        child: Center(
                                          child: Image.asset(
                                            'assets/icons/page1/Image12.png',
                                            height: 40,
                                            width: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF040404),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 2,
                                          ),
                                        ),
                                        height: 100,
                                        width: 350,
                                        child: Center(
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(top: 10),
                                                child: Text(
                                                  "Air Quality",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: SfLinearGauge(
                                                  ranges: const [
                                                    LinearGaugeRange(
                                                      startValue: 50,
                                                      endValue: 200,
                                                      color: Color.fromARGB(
                                                          255, 48, 240, 57),
                                                    ),
                                                    LinearGaugeRange(
                                                      startValue: 200,
                                                      endValue: 350,
                                                      color: Color.fromARGB(
                                                          255, 237, 240, 48),
                                                    ),
                                                    LinearGaugeRange(
                                                      startValue: 350,
                                                      endValue: 750,
                                                      color: Color.fromARGB(
                                                          255, 240, 48, 48),
                                                    ),
                                                  ],
                                                  minimum: 50,
                                                  maximum: 750,
                                                  axisLabelStyle:
                                                      const TextStyle(
                                                    color: Color.fromARGB(
                                                        255,
                                                        248,
                                                        248,
                                                        248), // set label text color to black
                                                  ),
                                                  axisTrackStyle:
                                                      const LinearAxisTrackStyle(
                                                          color: Colors.white),
                                                  markerPointers: [
                                                    LinearShapePointer(
                                                      value: mq3Ppm,
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 48, 99, 240),
                                                    )
                                                  ],
                                                  majorTickStyle:
                                                      const LinearTickStyle(
                                                          color: Colors.white,
                                                          length: 10),
                                                  minorTickStyle:
                                                      const LinearTickStyle(
                                                    color: Colors.white,
                                                    length: 5,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          /*Text(
                                            'Toxic Gas Level: $mq3Ppm',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),*/
                                        ),
                                      ),
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
