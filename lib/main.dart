import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.yellow],
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              "Hello World",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ),
        ),
      ),
    ),
  );
}
