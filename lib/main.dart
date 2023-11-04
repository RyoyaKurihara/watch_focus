import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:untitled/long_focus_timer.dart';
import 'package:untitled/short_focus_timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'select timer',
                style: TextStyle( color: Colors.white),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push( MaterialPageRoute(builder: (context) => const ShortFocusTimer()));
                        },
                        child: const Text('10 / 0')
                    ),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push( MaterialPageRoute(builder: (context) => const LongFocusTimer()));
                        },
                        child: const Text('25 / 5')
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
