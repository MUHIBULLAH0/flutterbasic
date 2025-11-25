import 'package:fitness_app/main.dart';
import 'package:fitness_app/ui/splash_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(HomeScreen());
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),

      debugShowCheckedModeBanner: false,
      home:splashscreen() ,
    );

  }
}




