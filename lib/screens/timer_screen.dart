import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _runningButtons = [
      ElevatedButton(
        onPressed: () {},
        child: Text(
          1 == 2 ? "계속하기" : "일시정지",
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(primary: Colors.blue),
      ),
      Padding(padding: EdgeInsets.all(20)),
      ElevatedButton(
        onPressed: () {},
        child: Text(
          "포기하기",
          style: TextStyle(fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(primary: Colors.grey),
      )
    ];

    final List<Widget> _stoppedButtons = [
      ElevatedButton(
        onPressed: () {},
        child: Text(
          "시작하기",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
            primary: 1 == 2 ? Colors.grey : Colors.blue),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("뽀모도르 타이머"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: 1 == 2 ? Colors.green : Colors.blue),
            child: Center(
              child: Text(
                "00:00",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 1 == 2
                ? const []
                : 1 == 2
                    ? _stoppedButtons
                    : _runningButtons,
          )
        ],
      ),
    );
  }
}
