import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation & Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Go to Second Screen'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: Text('Navigation with Data'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: Text('Return Data from Another Screen'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: Text('Replace Screen'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
 
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
 
class SecondScreenWithData extends StatelessWidget {
  final String data;
 
  const SecondScreenWithData(this.data);
 
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
 
class ReturnDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
 
class ReplacementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
 
class AnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}