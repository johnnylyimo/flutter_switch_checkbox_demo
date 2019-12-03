import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color colorType = Colors.yellow;
  bool isSwitched = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Hello Flutter'),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.blueGrey.shade700,
          width: 220.0,
          height: 180.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Hello Folks',
                  style: TextStyle(color: colorType),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('BlueColor'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Switch(
                    value: isSwitched,
                    // store user tap to toggle
                    onChanged: (bool toggled) {
                      setState(() {
                        isSwitched = toggled; // update isSwitched to toggled
                        isSwitched
                            ? colorType = Colors.blue
                            : colorType = Colors.yellow;
                        isChecked = false; // turn off if is true
                      });
                    },
                    activeTrackColor: Colors.blue.shade300,
                    activeColor: Colors.blue.shade500,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'GreenColor',
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Checkbox(
                    value: isChecked,
                    // store user tap checked
                    onChanged: (bool checked) {
                      setState(() {
                        isChecked = checked; // updated isChecked to checked
                        isChecked
                            ? colorType = Colors.green
                            : colorType = Colors.red;
                        isSwitched = false; // turn off if is true
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
