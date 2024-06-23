import 'package:flutter/material.dart';

class LargeScreens extends StatelessWidget {
  const LargeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0, backgroundColor: Colors.white),
        body: Row(children: <Widget>[
          Expanded(child: Container(color: Colors.red)),
          Expanded(flex: 5, child: Container(color: Colors.blue))
        ]));
  }
}
