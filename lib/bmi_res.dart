import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bmi_res extends StatelessWidget {
  final int result;
  final bool ismale;
  final int age;

  bmi_res({required this.result, required this.ismale, required this.age});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: Color(0xFF111328),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF111328),
        ),
        width: double.infinity,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'YOUR RESULT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            height: 600,
            child: Column(
              children: [
                Text(
                  '${result < 18.5 ? 'UNDERWEIGHT' : '${result >= 18.5 && result <= 24.9 ? 'NORMAL' : '${result >= 25 && result <= 29.9 ? 'OVERWEIGHT' : '${result >= 30 && result <= 34.9 ? 'OBESE' : '${result >= 35 && result <= 39.9 ? 'SEVERELY OBESE' : 'MORBIDLY OBESE'}'}'}'}'}',
                  style: TextStyle(color: Colors.orange, fontSize: 25),
                ),
                Text(
                  '${result}',
                  style: TextStyle(
                      fontSize: 200,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Normal BMI range :',
                  style: TextStyle(fontSize: 25, color: Colors.grey[500]),
                ),
                Text(
                  '18,5 - 25 kg/m2',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  '${result < 18.5 ? 'You Must Eat More' : '${result >= 18.5 && result <= 24.9 ? 'your body is great' : '${result >= 25 && result <= 29.9 ? 'you must loose some kilogrames' : '${result >= 30 && result <= 34.9 ? 'you must loose some kilogrames' : '${result >= 35 && result <= 39.9 ? 'Your Life in Danger' : 'Your Life in Danger'}'}'}'}'}',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
