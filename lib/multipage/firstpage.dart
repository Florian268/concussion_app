import 'package:flutter/material.dart';
import 'secondpage.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 66, 64, 64),
      backgroundColor: Color.fromARGB(255, 253, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 57, 109, 154),
        title: Center(
          child: Text(
            "Day 1",
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
            const SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.green,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                    offset: Offset(2.0, 2.0),
                  ),
                ],
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              alignment: Alignment.topLeft,
              width: 300,
              // width: MediaQuery.of(context).size.width,
              height: 200,
              margin: const EdgeInsets.all(20.0),
              child: const FittedBox(
                child: Text.rich(TextSpan(children: <InlineSpan>[
                  TextSpan(
                    text: "Do's",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text:
                          "\n\t\t- Rest well. \n\n\t\t- Eat healthy.\n\n\t\t- Follow medical advice.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700))
                ])),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                      offset: Offset(2.0, 2.0),
                    )
                  ]),
              width: 300,
              height: 200,
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text: "Don\'ts",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "\n\t\t- Avoid alcohol.\n\n\t\t- Avoid smoking.\n\n\t\t- Avoid stress.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 57, 109, 154),
        height: 60,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
