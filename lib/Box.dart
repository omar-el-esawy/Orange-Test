import 'dart:math';

import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  final hight;
  final String number;
  final ind;

  const Box({Key? key, required this.hight, required this.number, this.ind})
      : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  var rand = Random();

  @override
  Widget build(BuildContext context) {
    var colors = [Colors.red, Colors.orange, Colors.green, Colors.amber];
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      width: double.infinity,
      height: widget.hight,
      color: colors[rand.nextInt(3)],
      child: Center(
        child: Text(
          widget.number,
          style: TextStyle(
            fontSize: (90 / (widget.ind + 1)),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
