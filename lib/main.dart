import 'package:flutter/material.dart';
import 'package:relative_scale_example/src/dashboard.dart';

void main() => runApp(RelativeScalerExample());

class RelativeScalerExample extends StatelessWidget {
  const RelativeScalerExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
    );
  }
}
