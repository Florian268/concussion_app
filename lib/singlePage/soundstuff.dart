import 'dart:async';
import 'package:flutter/material.dart';
import 'package:noise_meter/noise_meter.dart';
import 'package:permission_handler/permission_handler.dart';

class soundstuff {
    
  StreamSubscription<dynamic>? noiseSubscription;
  StreamController<dynamic> noiseStreamController = StreamController<double>();

  Future<bool> checkPermission() async => await Permission.microphone.isGranted;

  /// Request the microphone permission.
  Future<void> requestPermission() async =>
      await Permission.microphone.request();

  void start() async{
    if (!(await checkPermission())) await requestPermission();
    
    noiseSubscription = NoiseMeter().noise.listen(
        (NoiseReading noiseReading) {
          noiseStreamController.add(noiseReading.meanDecibel);
        //#print('Noise: ${noiseReading.meanDecibel} dB');
         // print('Max amp: ${noiseReading.maxDecibel} dB');
        },
        onError: (Object error) {
          print(error);
          },
          cancelOnError: true,
        );
  }


}

