import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple counter',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Simple Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final kBgColor = Color.fromRGBO(241, 245, 248, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter',
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.w900,
                letterSpacing: 3,
                color: Color.fromRGBO(16, 42, 66, 1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButtonn('DECREASE'),
                SizedBox(
                  width: 15,
                ),
                OutlinedButtonn('RESET'),
                SizedBox(
                  width: 15,
                ),
                OutlinedButtonn('INCREASE'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class OutlinedButtonn extends StatelessWidget {
  final text;
  OutlinedButtonn(this.text);
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () => {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            letterSpacing: 3,
          ),
        ),
        style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(
            color: Colors.black,
            width: 1,
          )),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          ),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)))),
          // overlayColor: MaterialStateProperty.all(Colors.black),
        ));
  }
}
