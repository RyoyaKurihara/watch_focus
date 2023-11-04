import 'package:flutter/material.dart';

class ShortFocusTimer extends StatelessWidget{
  const ShortFocusTimer({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Expanded(
          child: Container(
            child: const Text('short timer',style: TextStyle( color: Colors.white)),
          ),

        )
      )
    );
  }

}