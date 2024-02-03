import 'package:flutter/material.dart';
import 'firstPage.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'thirdpage.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  final String title = "Week 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 57, 109, 154),
          title: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 290,
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
                    percent: 0.5,
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
            const SizedBox(height: 20),
            Container(   
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.green, ),
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              alignment: Alignment.topLeft,
              width: 300,
              // width: MediaQuery.of(context).size.width,
              height: 200,
              margin: const EdgeInsets.all(20.0),
              child: const Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text: "Do's",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: "\n\t\t- Rest well. \n\n\t\t- Follow doctor's order.\n\n\t\t- Gradually reintroduce light \n\t\t  activities.",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)
                    )
                  ]
                )
              ),
            ),
            Container(
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.red,),
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              alignment: Alignment.topLeft,
              width: 300,
              height: 200,
              child: Text.rich(
                TextSpan(
                  children: <InlineSpan> [
                TextSpan(
                  text: "Don\'ts",
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "\n\t\t- Excessively Use Electronic Devices.\n\n\t\t- Driving with symptoms.\n\n\t\t- Participate in Contact Sports.",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),

                ),
                  ],
                
              ),

              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Color.fromARGB(255, 57, 109, 154),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.arrow_circle_left_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const thirdpage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}