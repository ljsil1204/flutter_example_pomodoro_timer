import 'package:flutter/material.dart';
import 'package:flutter_example_pomodoro_timer/screens/timer_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Flutter Example Book List", home: TimerScreen());
  }
}
