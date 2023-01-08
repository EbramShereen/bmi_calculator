import 'dart:math';

import 'package:bmi_calculator/bmi_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_framework/responsive_framework.dart';

class bmi_screen extends StatefulWidget {
  @override
  State<bmi_screen> createState() => _bmi_screenState();
}

class _bmi_screenState extends State<bmi_screen> {
  bool ismale = false;
  double height = 170;
  double weight = 75;
  double age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF111328),
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF111328)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        ismale = true;
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ismale ? Colors.teal : Colors.grey[400],
                        ),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () => setState(() {
                                ismale = true;
                              }),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.male_rounded,
                                ),
                                iconSize: 80,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => ismale = false,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ismale ? Colors.grey[400] : Colors.teal),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.female_rounded),
                              iconSize: 80,
                              color: Colors.white,
                            ),
                            Text('FEMALE',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: (Colors.white),
                                ))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal,
                ),
                height: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                          color: Colors.grey[300], fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 50),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(color: Colors.grey[300]),
                        )
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 200,
                        min: 140,
                        onChanged: ((value) => setState(() {
                              height = value;
                            }))),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20)),
                      height: 170,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'WEIGHT',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[400]),
                            ),
                          ),
                          Text(
                            '${weight.round()}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 50),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  heroTag: 'weight++',
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(Icons.add)),
                              SizedBox(
                                width: 20,
                              ),
                              FloatingActionButton(
                                  heroTag: 'weight--',
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Icon(Icons.remove)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20)),
                      height: 170,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'AGE',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[400]),
                            ),
                          ),
                          Text(
                            '${age.round()}',
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'age++',
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(Icons.add),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              FloatingActionButton(
                                heroTag: 'age--',
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(Icons.remove),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 60),
            Container(
              width: 350,
              color: Colors.blue,
              child: MaterialButton(
                child: Text(
                  'CALCULATE YOUR BMI',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onPressed: (() {
                  double bmi = weight / pow(height / 100, 2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => bmi_res(
                              ismale: ismale,
                              result: bmi.round(),
                              age: age.round()))));
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
