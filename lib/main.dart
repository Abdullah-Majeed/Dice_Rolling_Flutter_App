import 'package:flutter/material.dart';
import 'package:first_app/custom_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: CustomContainer(colorList: [Color.fromARGB(255, 50, 7, 57), Color.fromARGB(255, 58, 40, 61)])),
    ),
  );
}
