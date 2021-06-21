import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Halsatu(),
      title: 'Named Routing',
      routes: <String, WidgetBuilder>{
        '/Halsatu': (BuildContext context) => Halsatu(),
        '/Haldua': (BuildContext context) => Haldua(),
      },
    );
  }
}

class Halsatu extends StatelessWidget {
  const Halsatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MUSIC"),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.headset,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/Haldua');
          },
        ),
      ),
    );
  }
}

class Haldua extends StatelessWidget {
  const Haldua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SPEAKER"),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.speaker,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/Halsatu');
          },
        ),
      ),
    );
  }
}
