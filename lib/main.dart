import 'package:flutter/material.dart';

void main() {
  runApp(Greeting());
}

class Greeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text("Flutter Widgets Practice", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.teal,
      ),
        backgroundColor:Colors.tealAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Hello!', style: TextStyle(fontSize: 24)),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Welcome!', style: TextStyle(fontSize: 24)),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Have a nice day!', style: TextStyle(fontSize: 24)),
            ),
            Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Counter(),
            ),
          ],
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CounterState();
  }
}

class CounterState extends State<Counter> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Counter is $counter",style: TextStyle(fontSize: 24,  fontWeight: FontWeight.bold,)),
          SizedBox(height: 16.0),
          FloatingActionButton(
            child: Icon(Icons.add, color: Colors.black),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            backgroundColor:Colors.tealAccent,
          ),
        ],
      ),
    );
  }
}