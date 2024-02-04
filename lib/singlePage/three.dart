import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

Widget three(BuildContext context, progress3){
  return 
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
    child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 30, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                    offset: Offset(2.0, 2.0),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 10),
                  LinearPercentIndicator(
                    alignment: MainAxisAlignment.center,
                    width: 290.0,
                    lineHeight: 14.0,
                    percent: progress3,
                    center: const Text(
                      "",
                      style: TextStyle(fontSize: 12.0),
                    ),
                    backgroundColor: Colors.grey,
                    progressColor: Colors.blue,
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Day 1'),
                      Text('Week 1'),
                      Text('Day 7+'),
                    ],
                  ),
                ],
              ),
            ),
Container(  
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Color.fromARGB(255, 65, 195, 93)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                // color: Color.fromARGB(255, 0, 136, 18),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(100, 31, 31, 31),
                    blurRadius: 24.0,
                    spreadRadius: 1.0,
                    offset: Offset(4.0, 4.0),
                  ),
                ],
              ),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topLeft,
                // height: 200,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                        color: Color.fromARGB(255, 0, 136, 18)
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: Text(
                        "DO's", 
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                      )
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                        color: Color.fromARGB(255, 53, 53, 53),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: Text(
                      "\t\t- Stay connected to support systems.\n\t\t- Gradually return back to work/school. \n\t\t- Increase activity levels based on \t\tpersonal levels of comfort.",
                        style: TextStyle(fontSize: 15, height: 2, color: Colors.white)
                      )
                    ),
                  ],
              )
            ),
            // DON'TS
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Color.fromARGB(255, 214, 77, 77)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(100, 31, 31, 31),
                    blurRadius: 24.0,
                    spreadRadius: 1.0,
                    offset: Offset(4.0, 4.0),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topLeft,
              // height: 200,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                      color: Color.fromARGB(255, 171, 2, 2)
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                    child: Text(
                      "DON'Ts", 
                       style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                      color: Color.fromARGB(255, 53, 53, 53),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                    child: Text(
                      "\t\t- Use of drugs or alcohol can interfere with healing progress.\n\t\t- Ignoring the process of healing can tultimately increase healing process.\n\t\t- Do not participate in extraneous activities that may harm oneself.",
                      style: TextStyle(fontSize: 15, height: 2, color: Colors.white)
                    )
                  ),
                ],
              )
            ),
            
          ],
  ));
}