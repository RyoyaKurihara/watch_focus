import 'package:flutter/material.dart';
import 'dart:async';

class ShortFocusTimer extends StatefulWidget {
  const ShortFocusTimer({super.key});

  @override
  State<ShortFocusTimer> createState() => ShortFocusTimerState();
}

class ShortFocusTimerState extends State<ShortFocusTimer> {
  int shortFocusTime = 10;
  int shortBreakTime = 0;

  int get shortFocusTimeCount => shortFocusTime;

  int get shortBreakTimeCount => shortBreakTime;

  int shortTimerSwitch = 0;

  void focusTimerStart(){
    shortTimerSwitch++;
    shortTimerSwitch = shortTimerSwitch % 4;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Expanded(
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                const Text('Short timer',
                    style: TextStyle(color: Colors.white)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('$shortFocusTime',
                        style: const TextStyle(color: Colors.white)),
                    const Text('/', style: TextStyle(color: Colors.white)),
                    Text('$shortBreakTime',
                        style: const TextStyle(color: Colors.white))
                  ],
                ),
                ElevatedButton(
                  onPressed: focusTimerStart,
                  child: const Icon(Icons.play_arrow),
                )
              ])),
        )));
  }
}
