import 'package:flutter/material.dart';

class ShortFocusTimer extends StatefulWidget{
  const ShortFocusTimer({super.key});

  @override
  State<ShortFocusTimer> createState() => ShortFocusTimerState();
}

class ShortFocusTimerState extends State<ShortFocusTimer> {

  int shortFocusTime = 10 * 60;
  int shortBreakTime = 0;
  int shortFocusTimeCount = 10 * 60;
  int shortBreakTimeCount = 0;

  int shortTimerSwitch = 0;
  int counter = 0;

  void timerSwitch(){
    setState(() {
      counter--;
    });
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
                    Text('${shortFocusTime - counter}',
                        style: const TextStyle(color: Colors.white)),
                    const Text('/', style: TextStyle(color: Colors.white)),
                    Text('$shortBreakTime',
                        style: const TextStyle(color: Colors.white))
                  ],
                ),
              ElevatedButton(
                onPressed: timerSwitch,
                child: const Icon( Icons.play_arrow ),
              )
              ])),
        )));
  }
}
