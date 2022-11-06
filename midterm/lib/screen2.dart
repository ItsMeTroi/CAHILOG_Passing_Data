// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable, use_key_in_widget_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {

  late String value;
  Screen2({required this.value});

@override
State<Screen2> createState() => _Screen2(value);
}

class _Screen2 extends State<Screen2>{

  String value;

  _Screen2(this.value);
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: Text(
            "Screen 2"
          ),
          backgroundColor: Colors.lightGreen,
        ),
            body: Center(
              child: Text(
                value,
              ),
              ),
            );
  }
}