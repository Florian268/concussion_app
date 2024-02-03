import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

Widget one(BuildContext context, progress1){
  return  Padding(
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
                    percent: 0.2,
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
                        "\t\t- Rest well. \n\t\t- Eat healthy.\n\t\t- Follow medical advice.",
                        style: TextStyle(fontSize: 15, height: 2, color: Colors.white)
                      )
                    ),
                  ],
              )
              // child: const FittedBox(
              //   child: Text.rich(TextSpan(children: <InlineSpan>[
              //     TextSpan(
              //       text: "DO's", 
              //       style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              //     ),
              //     TextSpan(
              //       text:
              //           "\n\t\t- Rest well. \n\t\t- Eat healthy.\n\t\t- Follow medical advice.",
              //       style:
              //           TextStyle(fontSize: 15, fontWeight: FontWeight.w500, height: 2, color: Colors.white)
              //     )
              //   ])),
              // ),
            ),
            // DON'TS
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Color.fromARGB(255, 214, 77, 77)),
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
                      "\t\t- Avoid alcohol.\t\t- Avoid smoking.\n\t\t- Avoid stress.",
                      style: TextStyle(fontSize: 15, height: 2, color: Colors.white)
                    )
                  ),
                ],
              )
            ),
            // Container(
            //   decoration: const BoxDecoration(
            //       borderRadius: BorderRadius.all(Radius.circular(10)),
            //       color: Colors.red,
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.black,
            //           blurRadius: 2.0,
            //           spreadRadius: 1.0,
            //           offset: Offset(2.0, 2.0),
            //         )
            //       ]),
            //   width: MediaQuery.of(context).size.width,
            //   // height: 200,
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            //   child: const Text.rich(
            //     TextSpan(
            //       children: <InlineSpan>[
            //         TextSpan(
            //           text: "Don\'ts",
            //           style:
            //               TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            //         ),
            //         TextSpan(
            //           text:
            //               "\n\t\t- Avoid alcohol.\t\t- Avoid smoking.\n\t\t- Avoid stress.",
            //           style:
            //               TextStyle(fontSize: 15, fontWeight: FontWeight.w500, height: 2),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
  ));
}