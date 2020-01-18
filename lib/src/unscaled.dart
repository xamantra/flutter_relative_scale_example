import 'package:flutter/material.dart';

class UnscaledExample extends StatefulWidget {
  UnscaledExample({Key key}) : super(key: key);

  @override
  _UnscaledExampleState createState() => _UnscaledExampleState();
}

class _UnscaledExampleState extends State<UnscaledExample> {
  @override
  Widget build(BuildContext context) {
    var sceenSize = MediaQuery.of(context).size;

    return Container(
      height: sceenSize.height,
      width: sceenSize.width,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 240,
              width: 370,
              margin: EdgeInsets.all(18),
              color: Colors.redAccent,
              child: Center(
                child: Text(
                  "Unscale Text 1",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 120,
              width: 420,
              margin: EdgeInsets.all(18),
              color: Colors.green,
              child: Center(
                child: Text(
                  "Unscale Text 2",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 180,
              width: 370,
              margin: EdgeInsets.all(18),
              color: Colors.blue,
              child: Center(
                child: Text(
                  "Unscale Text 3",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
