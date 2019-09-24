import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

double sliderValue = 5.0;
int targetValue = 10;
int score = 0;
int roundNumber = 0;

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bull's Eye"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Hit the Bulls's Eye as close as possible: $targetValue"),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text('0'),
                  Expanded(
                    child: Slider(
                      min: 0,
                      max: 100,
                      activeColor: Colors.blue,
                      onChanged: (value) {
                        setState(() {
                          sliderValue = value;
                          print('$value');
                        });
                      },
                      value: sliderValue,
                    ),
                  ),
                  Text('100'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
