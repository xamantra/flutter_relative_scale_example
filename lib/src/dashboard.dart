import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:relative_scale_example/src/scaled.dart';
import 'package:relative_scale_example/src/unscaled.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with RelativeScaler, SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    initRelativeScaler(context);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Screen Size: ${screenWidth.round()} x ${screenHeight.round()}",
            style: TextStyle(fontSize: sy(12)),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  "Unscaled",
                  style: TextStyle(fontSize: sy(10)),
                ),
              ),
              Tab(
                child: Text(
                  "Scaled",
                  style: TextStyle(fontSize: sy(10)),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            UnscaledExample(),
            ScaledExample(),
          ],
        ),
      ),
    );
  }
}
