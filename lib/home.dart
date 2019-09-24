import 'dart:math';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

double sliderValue = 50.0;
int targetValue = Random().nextInt(100);
int score = 0;
int roundNumber = 0;
int currentValue = 0;

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hit the Bulls's Eye as close as possible: $targetValue",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Text(
                    '0',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Expanded(
                    child: Slider(
                      min: 0,
                      max: 100,
                      activeColor: Colors.amberAccent,
                      inactiveColor: Colors.black,
                      onChanged: (value) {
                        setState(() {
                          sliderValue = value;
                          currentValue = sliderValue.toInt();
                        });
                      },
                      value: sliderValue,
                    ),
                  ),
                  Text(
                    '100',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {
                  return showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: Text("Your Score: $currentValue"),
                        titlePadding: EdgeInsets.all(20),
                      );
                    },
                  );
                },
                color: Colors.amberAccent,
                child: Text(
                  "Hit me!",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.refresh),
                      iconSize: 36,
                      color: Colors.white,
                    ),
                    Text(
                      'Score: $score',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      'Round: $roundNumber',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.info),
                      iconSize: 36,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void newRound() {
    roundNumber += 1;
    sliderValue = 50.0;
    targetValue = Random().nextInt(100);
  }
}
