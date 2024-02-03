import 'package:concussion_app/singlePage/soundstuff.dart';
import 'package:flutter/material.dart';
import 'one.dart' as one;
import 'two.dart' as two;
import 'three.dart' as three;
import 'dart:async';
import 'package:flutter/scheduler.dart';

class SinglePage extends StatefulWidget {
  const SinglePage({Key? key}) : super(key: key);

  @override
  State<SinglePage> createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage> {
  var prompt = false;
  var noiseMeter = new soundstuff();
  int index = 1;
  var titles = ["Day 1", "Week 1", "Day 7+"];
  var time = 0;
  Timer? timer;

  double progress1 = 0.15;
  double progress2 = 0.5;
  double progress3 = 0.85;

  void resetProgress(){
    setState(() {
      progress1 = 0.15;
      progress2 = 0.5;
      progress3 = 0.85;
    });
  }

  
  void startTimer() {
    Timer.periodic(Duration(seconds: 60), (timer) {
      setState(() {
        index += 1;
        if(index > 3){
          index = 3;
        }
      });
    });
  }
  

  setIndex(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    noiseMeter.start();
    startTimer();

    Widget bodyWidget;
    switch (index) {
      case 1:
        bodyWidget = one.one(context, progress1);
        break;
      case 2:
        bodyWidget = two.two(context, progress2); // Use the prefix to specify 'two' from 'three'
        break;
      case 3:
        bodyWidget = three.three(context, progress3);
        break;
      default:
        bodyWidget = Container(); // Replace with your default widget
    }

    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 66, 64, 64),
      backgroundColor: const Color.fromARGB(255, 53, 53, 53),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 57, 109, 154),
        title: Center(
          child: Text(
            titles[index - 1],
            style: TextStyle(color: Colors.white),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: bodyWidget,
          ),
          Container(
            child: StreamBuilder(
                stream:  noiseMeter.noiseStreamController.stream, // assuming this is a Stream
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    if (prompt == true || snapshot.data >= 85) {
                      prompt = true;
                      return AlertDialog(
                        title: Text('Warning'),
                        content: Text('Noise level is too high'),
                        actions: <Widget>[
                          TextButton(
                            child: Text('Ok'),
                            onPressed: () {
                              prompt = false;
                            },
                          ),
                        ],
                    
                        
                      );
                      
                      
                    }
                    return Container(
                      child: Text(
                          'Noise: ${snapshot.data.toStringAsFixed(2)} dB',
                          style: TextStyle(color: Colors.white),
                        ),
                    );
                  }   
                  
                         
                  else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return CircularProgressIndicator(); // show a loading spinner while waiting for data
                  }
                },
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 57, 109, 154),
        height: 60,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              onPressed: () {
                resetProgress();
                setIndex(1);
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.calendar_view_week,
                color: Colors.white,
              ),
              onPressed: () {
                resetProgress();
                setIndex(2);
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.calendar_month,
                color: Colors.white,
              ),
              onPressed: () {
                resetProgress();
                setIndex(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}
