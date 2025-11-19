import 'package:flutter/material.dart';

class workout extends StatefulWidget {
  const workout({super.key});

  @override
  State<workout> createState() => _workoutState();
}

class _workoutState extends State<workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("workout")),
    );
  }
}
