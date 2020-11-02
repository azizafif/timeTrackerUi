import 'package:flutter/material.dart';
import 'package:timey2/startButton.dart';
import 'button.dart';
import 'buttonTapped.dart';
import 'startButton.dart';
class TimerPage extends StatefulWidget {
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {

  var icons1 = Icons.home;
  var icons2 = Icons.timer_rounded;
  var icons3 = Icons.assessment;
  var icons4 = Icons.settings;


  //

  bool buttonPressed1 = false;
  bool buttonPressed2 = false;
  bool buttonPressed3 = false;
  bool buttonPressed4 = false;
  bool buttonPressedStart = false;

  void _letsPress1() {
    setState(() {
      buttonPressed1 = true;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
    });
  }

  void _letsPress2() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = true;
      buttonPressed3 = false;
      buttonPressed4 = false;
    });
  }

  void _letsPress3() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = true;
      buttonPressed4 = false;
    });
  }

  void _letsPress4() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = true;
    });
  }
  void _letsPress5(){
    setState(() {
      buttonPressedStart = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      // FIRST BUTTON
                        onTap: _letsPress1,
                        child: buttonPressed1
                            ? ButtonTapped(
                          icon: icons1,
                        )
                            : MyButton(
                          icon: icons1,
                        )
    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      // SECOND BUTTON
                        onTap: _letsPress2,
                        child: buttonPressed2
                            ? ButtonTapped(
                          icon: icons2,
                        )
                            : MyButton(
                          icon: icons2,
                        )),
                  ),
                  Expanded(
                    child: GestureDetector(
                      // THIRD BUTTON
                        onTap: _letsPress3,
                        child: buttonPressed3
                            ? ButtonTapped(
                          icon: icons3,
                        )
                            : MyButton(
                          icon: icons3,
                        )),
                  ),
                  Expanded(
                    child: GestureDetector(
                      // FOURTH BUTTON
                        onTap: _letsPress4,
                        child: buttonPressed4
                            ? ButtonTapped(
                          icon: icons4,
                        )
                            : MyButton(
                          icon: icons4,
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
