import 'package:flutter/material.dart';

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
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreen');
              },
            ),
            ElevatedButton(
              child: Text('Navigation with Data'),
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreenWithData',
                    arguments: 'Hello from First Screen!');
              },
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
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class SecondScreenWithData extends StatelessWidget {
  final String data;

  const SecondScreenWithData(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(data),
          ElevatedButton(
            child: Text('Back'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      )),
    );
  }
}

//class Return data screen
class ReturnDataScreen extends StatefulWidget {
  @override
  _ReturnDataScreenState createState() => _ReturnDataScreenState();
}

class _ReturnDataScreenState extends State<ReturnDataScreen> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(labelText: 'Enter your name'),
              ),
            ),
            ElevatedButton(
              child: Text('Send'),
              onPressed: () {
                Navigator.pop(context, _textController.text);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
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
