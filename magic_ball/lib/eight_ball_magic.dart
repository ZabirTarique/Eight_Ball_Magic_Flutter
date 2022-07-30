import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';



class EightBallMagic extends StatefulWidget {
  const EightBallMagic({Key? key}) : super(key: key);

  @override
  State<EightBallMagic> createState() => _EightBallMagicState();
}

class _EightBallMagicState extends State<EightBallMagic> {
  int ballNumber = 1;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Eight Ball Magic App'),
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(child: eightBall(context)),
      ),
    );
  }

  Widget eightBall(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: MaterialButton(
                onPressed: () {
                  setState(() {
                    ballNumber = 1 + random.nextInt(5 - 1);
                    if (kDebugMode) {
                      print(ballNumber);
                    }
                  });
                },
                child: Image.asset('images/ball$ballNumber.png')),
          ),
        ],
      ),
    );
  }

  void changeBall() {
    setState(() {
      ballNumber = 1 + random.nextInt(5 - 1);
    });
  }
}