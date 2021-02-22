import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SliderPage(),
    );
  }
}

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 0.0;

  _changeValue(double value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade600,
        title: Text('Flutter Slider'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Text('Value is $_value'),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Slider(
                  value: _value,
                  onChanged: _changeValue,
                  activeColor: Colors.green,
                  inactiveColor: Colors.green.shade100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: LinearProgressIndicator(
                  value: _value,
                  backgroundColor: Colors.green.shade100,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularProgressIndicator(
                  value: _value,
                  backgroundColor: Colors.green.shade100,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
