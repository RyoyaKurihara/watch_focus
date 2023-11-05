import 'package:flutter/material.dart';

class LongFocusTimer extends StatelessWidget{
  const LongFocusTimer({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: const Center(
          child: Text('long timer', style: TextStyle( color: Colors.white)),

        )
      ),
    );
  }

}